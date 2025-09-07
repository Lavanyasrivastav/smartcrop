<?php
header('Content-Type: application/json');

// ✅ Check if image is uploaded
if (!isset($_FILES['crop_image'])) {
    echo json_encode(['status' => 'error', 'message' => 'No image uploaded.']);
    exit;
}

$image = $_FILES['crop_image'];
$allowed_extensions = ['jpg', 'jpeg', 'png'];

// ✅ Validate file extension
$ext = strtolower(pathinfo($image['name'], PATHINFO_EXTENSION));
if (!in_array($ext, $allowed_extensions)) {
    echo json_encode(['status' => 'error', 'message' => 'Only JPG, JPEG, PNG images are allowed.']);
    exit;
}

// ✅ Create uploads folder if not exists
$uploadDir = __DIR__ . '/../uploads/';
if (!file_exists($uploadDir)) {
    mkdir($uploadDir, 0777, true);
}

// ✅ Save uploaded file with unique name
$filename = uniqid('crop_', true) . '.' . $ext;
$filepath = $uploadDir . $filename;

if (move_uploaded_file($image['tmp_name'], $filepath)) {
    // ✅ Call Python script for AI analysis
    $pythonScript = __DIR__ . '/../backend/analyze_crop.py';

    if (!file_exists($pythonScript)) {
        echo json_encode(['status' => 'error', 'message' => 'AI script not found.']);
        exit;
    }

    // ✅ Build shell command safely
    $pythonPath = "C:\Users\Lavanya\AppData\Local\Programs\Python\Python313\python.exe";
    $command = escapeshellcmd($pythonPath . " " . escapeshellarg($pythonScript) . " " . escapeshellarg($filepath));

    $output = shell_exec($command);

// Debugging: show raw output
    if (!$output) {
        echo json_encode(['status' => 'error', 'message' => 'No output from Python script. Command: ' . $command]);
        exit;
    }

    $result = json_decode($output, true);

    if (json_last_error() !== JSON_ERROR_NONE) {
        echo json_encode(['status' => 'error', 'message' => 'Invalid JSON from Python: ' . $output]);
        exit;
    }

    if (isset($result['diagnosis'])) 
    {
        echo json_encode([
            'status' => 'success',
            'diagnosis' => $result['diagnosis'],
            'recommendation' => $result['recommendation'],
            'organic' => $result['organic']
        ]);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Unable to analyze image.']);
    }

} else {
    echo json_encode(['status' => 'error', 'message' => 'Failed to upload image.']);
}
?>
