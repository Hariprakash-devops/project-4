#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=hariprakashvk/devops1project-4

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
winpty docker login -u hariprakashvk
winpty docker tag api $dockerpath

# Step 3:
# Push image to a docker repository
winpty docker push $dockerpath

cmd /k
