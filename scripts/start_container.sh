#!/bin/bash
set -e

echo "Pulling latest Docker image..."
sudo docker pull harshaginjala/nodeapp:latest

echo "Starting chat-app container..."
sudo docker run -d \
  --name chat-app \
  -p 3000:3000 \
  --restart unless-stopped \
  harshaginjala/nodeapp:latest

echo "Chat application started successfully on port 3000"

# Verify container is running
sleep 5
sudo docker ps | grep chat-app