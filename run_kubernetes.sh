#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=pgcorriente/lesson5-final-project

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=$dockerpath --port=80 lesson5-final-app

# Step 3:
# List kubernetes pods
kubectl get pods
pod_name=$(kubectl get pods |grep lesson5-final-app|awk '{print $1}')

# Step 4:
# Forward the container port to a host
kubectl port-forward $pod_name 8000:80
