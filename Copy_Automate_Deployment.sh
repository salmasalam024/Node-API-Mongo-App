#!/bin/bash


# Variables

EC2_PUBLIC_IP="107.22.20.188"   # Destination  server's public IP

EC2_USER= "ubuntu"                    # user id

PEM_FILE="/home/ubuntu/.ssh/id_rsa"      # Path to your AWS .pem key

LOCAL_PROJECT_DIR="/home/ubuntu/Node-API-Mongo-App"   # Path to  local project directory

REMOTE_PROJECT_DIR="/home/ubuntu/Node-API-Mongo-Copy"   # Directory on the destination server  where  the project will be transfered


#  Transfer code to Destination server

echo "Transferring code to EC2 instance..."
scp -i $PEM_FILE -r $LOCAL_PROJECT_DIR $EC2_USER@$EC2_PUBLIC_IP:$REMOTE_PROJECT_DIR




