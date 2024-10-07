#!/bin/bash

# Variables
PROJECT_DIR="/home/ubuntu/Node-API-Mongo-App"  # The path to the project directory
COMPOSE_FILE="docker-compose.yml"   # Docker Compose file
LOG_FILE="docker_run.log"           # Log file to capture output

# Step 1: Navigate to the project directory
cd $PROJECT_DIR || {
    echo "ERROR: Failed to navigate to the project directory: $PROJECT_DIR"
    exit 1
}

# Step 2: Build the Docker images
echo "Building Docker images..."
docker-compose -f $COMPOSE_FILE build > $LOG_FILE 2>&1
if [[ $? -ne 0 ]]; then
    echo "ERROR: Docker build failed. Check $LOG_FILE for details."
    exit 1
fi
echo "Docker images built successfully."

# Step 3: Run the Docker containers
echo "Running Docker containers..."
docker-compose -f $COMPOSE_FILE up -d >> $LOG_FILE 2>&1
if [[ $? -ne 0 ]]; then
    echo "ERROR: Failed to run Docker containers. Check $LOG_FILE for details."
    exit 1
fi
echo "Docker containers are running successfully."

# Step 4: Verify running containers
docker ps 
if [[ $? -ne 0 ]]; then
    echo "ERROR: No running Docker containers found for project: $(basename $PROJECT_DIR)"
    exit 1
else
    echo "SUCCESS: Docker containers are up and running!"
fi

