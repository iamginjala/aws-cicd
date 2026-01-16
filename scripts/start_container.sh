#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull harshaginjala/simple-python-flask-app

# Run the Docker image as a container
docker run -d -p 5000:5000 harshaginjala/simple-python-flask-app
