![image](https://github.com/user-attachments/assets/570a55ad-37d1-4894-bba7-231e7e0498ee)

# CRUD Application Deployment, Containarization and Monitoring

## Note:
**More detailed steps and screen shots in the attached pdf file**

**1- Deploying >>** https://github.com/salmasalam024/Node-API-Mongo-App/blob/main/Containerized%20CRUD%20Application%20with%20Automation%20Scripts.pdf

**2- Monitoring >>** https://github.com/salmasalam024/Node-API-Mongo-App/blob/main/Monitoring%20CRUP%20App%20.pdf


## Overview
This project is a containerized CRUD application that uses a MongoDB database. The application can be run locally with Docker and Docker Compose and deployed to an AWS EC2 instance. The MongoDB database is automatically backed up daily.
The second part is monitoring the application on various levels including the host ec2, all containers and the application itelf using prometheus also visualization using grafana.

## Prerequisites
- Docker and Docker Compose installed.
- Two AWS EC2 instance running Ubuntu.
- SSH access to both EC2 instances.

## Work flow to Build , Deploy , Automate Backup and Monitoring 

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
11. **Adding a service in the docker-compose file to run portainer**
12. **Adding a service in the docker-compose file to run prometheus**
13. **Adding a service in the docker-compose file to run node-exporter**
14. **Adding a service in the docker-compose file to run cAdvisor**
15. **Creating prometheus.yml file to configure jobs and targets**
16. **Adding a service in the docker-compose file to run grafana**
17. **configure prometheus as a data source for garfana**
18. **Import grafana dashboards for node-exporter and cAdvisor**

## More Details upon used docker images
1. **Docker will create the [MongoDB](https://www.mongodb.com/) from the stock [mongo](https://hub.docker.com/_/mongo) image.**
2. **The api uses [nodejs](https://nodejs.org/) with [express](http://expressjs.com/) and is built from a [node:alpine](https://hub.docker.com/_/node) image.**
3. **The front end uses [ReactJS](https://reactjs.org/) and built from a [node:alpine](https://hub.docker.com/_/node) image.**
