#!/bin/bash
set -e

echo "Stopping existing chat-app container..."

# Stop and remove container if it exists
ContainerId=$(sudo docker ps -q )

if [ ! -z "$ContainerId" ]; then
    echo "Stopping container $ContainerId"
    sudo docker stop $ContainerId
    sudo docker rm $ContainerId
else
    echo "No running chat-app container found"
fi
