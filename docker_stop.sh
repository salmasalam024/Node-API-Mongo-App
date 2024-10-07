#!/bin/bash

# Variables
PROJECT_DIR="/home/ubuntu/Node-API-Mongo-App"  # Path to the project directory
COMPOSE_FILE="docker-compose.yml"   # Docker Compose file
LOG_FILE="docker_stop.log"          # Log file to capture output

# Step 1: Navigate to the project directory
cd $PROJECT_DIR || {
    echo "ERROR: Failed to navigate to the project directory: $PROJECT_DIR"
    exit 1
}

# Step 2: Stop Docker containers
echo "Stopping Docker containers..."
docker-compose -f $COMPOSE_FILE down > $LOG_FILE 2>&1
if [[ $? -ne 0 ]]; then
    echo "ERROR: Failed to stop Docker containers. Check $LOG_FILE for details."
    exit 1
fi

echo "Docker containers stopped and resources cleaned up successfully."

