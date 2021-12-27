#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="michaelsorenson/udacity-project-ml:latest"

# Step 2
# Run the Docker Hub container with kubernetes
sudo microk8s kubectl apply -f ./kubernetes/deployment.yml

# Step 3:
# List kubernetes pods
sudo microk8s kubectl get pods

# Step 4:
# Forward the container port to a host
sudo microk8s kubectl port-forward svc/project-ml 8000:80
