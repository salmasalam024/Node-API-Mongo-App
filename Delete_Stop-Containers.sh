#!/bin/bash



# Step 1: SSH into the distination server and delete containers to run the application

echo "Connecting to EC2 instance and running the stopping  script..."

ssh -i /home/ubuntu/.ssh/id_rsa  ubuntu@107.22.20.188 << EOF

      cd Node-API-Mongo-Copy/Node-API-Mongo-App

      docker-compose down

EOF

# Step 2: Checking if the application is succsefully running

  if [ $? -eq 0 ]; then

        echo "Application is stopped Successfully  ."

   else

        echo "Failed to stop  the application ." >&2
        exit 1
    fi


