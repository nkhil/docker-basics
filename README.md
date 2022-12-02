# Containerising a simple node app from scratch

This is a learning project to become more comfortable with Docker and Kubernetes. 

I'm folowing [some instructions](https://nodejs.org/fr/docs/guides/nodejs-docker-webapp/) as I go.

# Setup

```bash
git clone https://github.com/nkhil/docker-basics.git
cd docker-basics
npm install
docker build -t <enter-an-optional-tag-here> .
docker run -p 8080:8080 -d <your-image-id>
```

Visit http://localhost:8080/healthcheck in a browser to test if the container is up and running. 

If all is well, you should see: 

```json
{ "message" : "OK" }
```

# Commands 

These are in no way exhaustive, just what I've been using to get started:

```bash

#Build an image from a Dockerfile
$ docker build [OPTIONS] PATH
# Example:
$ docker build -t <your-username>/<container-name> .

# Run an image you've built or acquired
$ docker run -p 8080:8080 -d <containerId>
$ docker run -p 8080:8080 -d <your-container-tag>
# - The -p flag redirects a public port to a private port 
# inside the container.
# - Running your image with -d runs the container in detached 
# mode leaving the container running in the background.

# Explore the file system of an image
docker run -it <image-name> sh

# List containers
$ docker ps

# Show all containers (default shows just running)
$ docker ps -a

# List images
$ docker images

# Show all images (default hides intermediate images)
$ docker images -a

# # Print app output
$ docker logs <container id>

# Enter the container
$ docker exec -it <container id> /bin/bash
# To exit, use 'exit'

# Stop a container
$ docker stop <containerId>

# Remove a stopped container
$ docker container rm <container-id>

# Remove an image
$ docker rmi <image-id>
$ docker rmi -f <image-id>
# -f force removes it

# Remove unused data
$ docker system prune
# Remove all unused images not just dangling ones
$ docker system prune -a
# Do not prompt for confirmation
$ docker system prune -f
# prune volumes
$ docker system prune --volume

```



