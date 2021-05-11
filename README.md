# python-api

This is a Docker Image for deploy APIs in Python

https://hub.docker.com/r/hersonpc/python-api

## Docker commands

To download the image from Docker Hub:  
```shell
docker pull hersonpc/python-api:latest
```

To build manually a local docker image, without downloading it from Docker Hub, you can use:
```shell
docker build -t hersonpc/python-api:latest .

# or just
make build
```

## Docker compose

A pratical example of an use case, using the docker compose way. You just need to create a _docker-compose.yml_ file, like this below and than you can call the shell command: **docker-compose up -d**  

```yml
version: "3"

services:

  api:
    image: hersonpc/python-api:latest 
    restart: always
    container_name: api
    volumes:
      - ./src:/api
    ports:
      - "80:8000"
    depends_on:
      - postgres
    command: ["uvicorn", "main:app", "--host", "0.0.0.0", "--reload"]
```