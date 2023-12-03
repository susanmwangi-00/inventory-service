#!/bin/bash

echo "🔨 Building the Docker image..."

docker build -t inventory-service:latest .

docker run -d -p 5000:5000 -e FLASK_ENV=testing inventory-service

echo "🚀 The inventory-service Flask app is now running."
echo "🌐 You can access it by opening a web browser and entering:"
echo "   🌍 http://localhost:5000"
echo "   or"
echo "   🌐 http://YOUR_SERVER_IP:5000 (if accessing remotely)"
