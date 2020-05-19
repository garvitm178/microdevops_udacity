#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="garvitmehta/project-ml-microservice-kubernetes"
tag_name="microdocker"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $tag_name --image=$dockerpath --port=80 --labels app=$tag_name

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $tag_name 8000:80
