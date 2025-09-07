import sys
import json
import os

# Get the image path from command-line arguments (not used for dummy results)
image_path = sys.argv[1]

# Dummy results for simulation
dummy_results = [
    {
        "diagnosis": "Powdery Mildew",
        "recommendation": "Spray sulfur-based fungicide, ensure good ventilation.",
        "organic": "Apply neem oil spray every 10 days."
    },
    {
        "diagnosis": "Leaf Spot",
        "recommendation": "Use a copper-based fungicide, remove affected leaves.",
        "organic": "Spray with compost tea weekly."
    },
    {
        "diagnosis": "Root Rot",
        "recommendation": "Improve soil drainage, apply fungicide containing metalaxyl.",
        "organic": "Use Trichoderma-based biofungicide in soil."
    }
]

# File to track which result to show next
counter_file = "counter.txt"

# Read current counter
if os.path.exists(counter_file):
    with open(counter_file, "r") as f:
        counter = int(f.read().strip())
else:
    counter = 0

# Pick result based on counter
result = dummy_results[counter % len(dummy_results)]

# Save updated counter for next run
with open(counter_file, "w") as f:
    f.write(str(counter + 1))

# Print result in JSON format
print(json.dumps(result))
