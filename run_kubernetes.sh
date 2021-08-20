#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=phlppsdr/udacity_app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacityapp --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl wait --for=condition=ready pod udacityapp
kubectl port-forward udacityapp 8000:80
