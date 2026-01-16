#!/bin/bash
set -e

# Stop the running container (if any)
ContainerId=$(sudo docker ps -q)
echo "Container ID: $ContainerId"

if [ ! -z "$ContainerId" ]; then
    echo "Stopping container $ContainerId"
    sudo docker rm -f $ContainerId
else
    echo "No running containers found"
fi
