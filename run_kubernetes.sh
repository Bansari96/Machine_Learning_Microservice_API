#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="bansaripatel/firstmicroservicebuild"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run firstmicroservicebuild\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=firstmicroservicebuild

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward firstmicroservicebuild 8000:80