
# CRUD Application Deployment

## Note:
**More detailed steps and screen shots in the attached pdf file**
**1- Deploying >>** https://github.com/salmasalam024/Node-API-Mongo-App/blob/main/Containerized%20CRUD%20Application%20with%20Automation%20Scripts.pdf
**2- Monitoring >>** https://github.com/salmasalam024/Node-API-Mongo-App/blob/main/Monitoring%20CRUP%20App%20.pdf


## Overview
This project is a containerized CRUD application that uses a MongoDB database. The application can be run locally with Docker and Docker Compose and deployed to an AWS EC2 instance. The MongoDB database is automatically backed up daily.

## Prerequisites
- Docker and Docker Compose installed.
- Two AWS EC2 instance running Ubuntu.
- SSH access to both EC2 instances.

## Steps to Build and Deploy and Automate Backup

1. **Clone the Repository**
1. **Creating CRUD App** 
2. **Confirming that application is working locally**
3. **Dockerize the application in three containers; the first for the application front end , the second for API and third for the database**
4. **Running the application using Docker-Compose**
5. **Pushing the Application into git repo** 
6. **Clone application into Main Server on AWS**
7. **Write scripts to automate building, running, and stopping the Docker containers**
8. **Write scripts to transfer code to target server and build/run the Docker image on the VM**
9. **Write scripts to  ensure successful deployment.**
10. **Implement an Automated Daily Task by Automatically back up the application's data once per day**


## More Details upon used docker images
1. **Docker will create the [MongoDB](https://www.mongodb.com/) from the stock [mongo](https://hub.docker.com/_/mongo) image.**
2. **The api uses [nodejs](https://nodejs.org/) with [express](http://expressjs.com/) and is built from a [node:alpine](https://hub.docker.com/_/node) image.**
3. **The front end uses [ReactJS](https://reactjs.org/) and built from a [node:alpine](https://hub.docker.com/_/node) image.**
