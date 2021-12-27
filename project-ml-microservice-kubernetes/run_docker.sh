#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
sudo docker build -t project-ml:latest .

# Step 2: 
# List docker images
sudo docker images | grep project-ml

# Step 3: 
# Run flask app
sudo docker run -it -p 8000:80 project-ml:latest
