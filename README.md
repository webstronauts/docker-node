# docker-node

A Docker container based on [Alpine Linux](https://alpinelinux.org/) based on best practices to run performant and secure [Node.js](https://nodejs.org/) applications.


[![Docker Automated build](https://img.shields.io/docker/automated/webstronauts/node.svg)](https://hub.docker.com/r/webstronauts/php/)
[![Docker Build Status](https://img.shields.io/docker/build/webstronauts/node.svg)](https://hub.docker.com/r/webstronauts/php/builds/)

## Usage

### How to use this image

Create a `Dockerfile` in your Node.js project;

```dockerfile
FROM webstronauts/node:latest
```

You can then build and run the Docker image:

```console
$ docker build -t my-node-app .
$ docker run -it --rm --name my-node-app my-node-app
```

## License

MIT © [The Webstronauts](https://www.webstronauts.co)
