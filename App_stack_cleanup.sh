#!/bin/bash

# Stop running containers
docker stop mysql_db nginx_server node_app

# Remove containers
docker rm mysql_db nginx_server node_app

# Show remaining Docker resources
echo "Containers removed. Volumes and network are still available."
docker ps -a
echo
sleep 2
docker network ls
echo 
sleep 2
docker volume ls
