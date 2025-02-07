# docker-Revision-Web_Application_stack
Revision docker project 

This script depends on docker running on the host system 

Project Name: Docker Web App Stack

Overview
------------

This project sets up a Docker-based web application stack using MySQL, Nginx, and a Node.js backend. The stack is designed to allow seamless communication between containers and serves a styled index.html page via Nginx.

Prerequisites
-------------

 * Docker installed on your system

 * Basic knowledge of Docker and containerized applications as well as Linux

Setup Instructions
-------------

1. Clone the repository:

git clone <repo_url>
cd <repo_name>

2. Make the setup script executable and run it:

chmod +x docker_run.sh
./docker_run.sh

3. Access the application:

 * Webpage: http://localhost:8080 # Or host port you set on Nginx 

 * Node.js API (if applicable): http://localhost:3000

Stopping and Removing Containers
----------------

To stop and remove the running containers without deleting the network and volume, run:

chmod +x docker_cleanup.sh
./docker_cleanup.sh

