#!/bin/bash
echo "🚀 Starting deployment..."

# Pull latest changes
git pull origin main

# Deploy with docker-compose
docker-compose down
docker-compose up -d --build

echo "✅ Deployment complete!"
echo "📊 Checking services..."
docker ps