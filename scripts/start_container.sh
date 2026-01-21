#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull harshaginjala/nodeapp:latest

# Run the Docker image as a container
docker run -p3000:3000 harshaginjala/nodeapp:latest