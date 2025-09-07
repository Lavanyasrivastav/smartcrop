<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Upload Crop Image</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body { background: #0f172a; font-family: 'Inter', sans-serif; }
    .container { max-width: 600px; margin-top: 50px; }
    .preview-img { width: 100%; max-height: 250px; object-fit: cover; border-radius: 10px; margin-top: 10px; }
</style>
</head>
<body>

<div class="container">
    <h2 class="text-center text-success mb-4" >Upload Crop Image for Advisory</h2>
    
    <form id="uploadForm" enctype="multipart/form-data">
        <div class="mb-3">
            <label class="form-label" style="color: white;">Choose Crop Image</label>
            <input type="file" class="form-control" name="crop_image" id="crop_image" accept="image/*" required>
        </div>
        <img id="preview" class="preview-img d-none" />
        <button type="submit" class="btn btn-success w-100 mt-3">Get Advice</button>
    </form>

    <div id="result" class="mt-4"></div>
</div>

<script>
document.getElementById('crop_image').addEventListener('change', function(event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
            document.getElementById('preview').src = e.target.result;
            document.getElementById('preview').classList.remove('d-none');
        }
        reader.readAsDataURL(file);
    }
});

document.getElementById('uploadForm').addEventListener('submit', async function(e) {
    e.preventDefault();
    const formData = new FormData(this);

    document.getElementById('result').innerHTML = `<div class="alert alert-info">Analyzing your image, please wait...</div>`;

    try {
        const res = await fetch('process_crop_image.php', {
            method: 'POST',
            body: formData
        });
        const data = await res.json();

        if (data.status === "success") {
            document.getElementById('result').innerHTML = `
                <div class="card p-3">
                    <h4 class="text-success">Advice for Your Crop</h4>
                    <p><strong>Diagnosis:</strong> ${data.diagnosis}</p>
                    <p><strong>Recommendation:</strong> ${data.recommendation}</p>
                    <p><strong>Organic Alternative:</strong> ${data.organic}</p>
                </div>
            `;
        } else {
            document.getElementById('result').innerHTML = `<div class="alert alert-danger">${data.message}</div>`;
        }
    } catch (err) {
        document.getElementById('result').innerHTML = `<div class="alert alert-danger">Server error, please try again.</div>`;
    }
});
</script>

</body>
</html>
