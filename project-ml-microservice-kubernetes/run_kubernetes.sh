#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="michaelsorenson/udacity-project-ml:latest"

# Default command to interact with kubernetes
KUBECTL_COMMAND=kubectl
# Test if microk8s is installed and update the kubernetes command
if [[ "$(which microk8s)" ]]
then
    KUBECTL_COMMAND="microk8s kubectl"
fi

# Step 2
# Run the Docker Hub container with kubernetes
$KUBECTL_COMMAND apply -f ./kubernetes/deployment.yml

# Step 3:
# List kubernetes pods
$KUBECTL_COMMAND get pods

# Step 4:
# Forward the container port to a host
$KUBECTL_COMMAND port-forward svc/project-ml 8000:80
