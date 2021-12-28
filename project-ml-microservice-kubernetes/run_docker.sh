#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t michaelsorenson/udacity-project-ml:latest .

# Step 2: 
# List docker images
docker images | grep michaelsorenson/udacity-project-ml

# Step 3: 
# Run flask app
docker run -it -p 8000:80 michaelsorenson/udacity-project-ml:latest
