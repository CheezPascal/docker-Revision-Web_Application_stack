#!/bin/bash

# Create a Docker network
docker network create my_network

# Create a volume for the Nginx web files
docker volume create nginx_html

# Run MySQL container
docker container run -d \
  --name mysql_db \
  --network my_network \
  -e MYSQL_ROOT_PASSWORD=rootpassword \
  -e MYSQL_DATABASE=mydatabase \
  -e MYSQL_USER=myuser \
  -e MYSQL_PASSWORD=mypassword \
  -v mysql_data:/var/lib/mysql \
  mysql:latest

# Run Nginx container with volume for static HTML
docker container run -d \
  --name nginx_server \
  --network my_network \
  -p 8080:80 \
  -v nginx_html:/usr/share/nginx/html \
  nginx:latest

# Run Node.js container
docker container run -d \
  --name node_app \
  --network my_network \
  -p 3000:3000 \
  -v $(pwd)/app:/usr/src/app \
  -w /usr/src/app \
  node:latest npm start

# Copy sample HTML file into the Nginx volume
echo "<h1>Hello, Docker!</h1>" | docker container run --rm -i \
  -v nginx_html:/usr/share/nginx/html busybox sh -c "cat > /usr/share/nginx/html/index.html"

# Verify running containers
docker ps
