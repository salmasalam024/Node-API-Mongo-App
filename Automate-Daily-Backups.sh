#!/bin/bash

# Variables

BACKUP_DIR="/home/ubuntu/Node-API-Mongo-Copy/Node-API-Mongo-App/backup"  #  backup directory

TIMESTAMP=$(date +"%Y%m%d%H%M%S")             # Create a timestamp

CONTAINER_NAME="node-api-mongo-app_mongo_1"    # Replace with  MongoDB container name

DB_NAME="todos"                   # Replace with MongoDB database name

#Step 1: Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

#Step 2:  Check if the container is running
if [[ $(docker ps -q -f name=$CONTAINER_NAME) ]]; then
    echo "Creating backup of MongoDB database '$DB_NAME' from container '$CONTAINER_NAME'..."

    # Perform the backup

    docker exec "$CONTAINER_NAME" mongodump --db "$DB_NAME" --out /tmp/mongodump

    # Copy the backup from the container to the host

    docker cp "$CONTAINER_NAME:/tmp/mongodump" "$BACKUP_DIR/mongodump_$TIMESTAMP"

    # Clean up the temporary backup files in the container

    docker exec "$CONTAINER_NAME" rm -rf /tmp/mongodump

    echo "Backup created successfully at '$BACKUP_DIR/mongodump_$TIMESTAMP'."
else

    echo "Error: MongoDB container '$CONTAINER_NAME' is not running."
    exit 1
fi

