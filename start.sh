#!/bin/bash

# Ensure the docker daemon is running in WSL
sudo service docker start

# Clean up any existing instances
docker-compose down --remove-orphans

# Pull latest images
docker-compose pull

# Start the services
docker-compose up -d

# Show logs
docker-compose logs -f