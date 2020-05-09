#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=tobiasfeith/api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ~/docker_pwd.txt | docker login --username tobiasfeith --password-stdin
docker tag api:latest $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath

docker logout
