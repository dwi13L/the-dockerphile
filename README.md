# Dockerphile

> Writing the [Dockerfile](https://github.com/dwi13L/the_dockerphile/blob/2a1eed6312e81da83449dc90aa57d878ea08eb52/Dockerfile) and building images using docker CLI

Build

    docker build -t [name] [pathToDockerfile]

<br>

Run

    #Syntax
    docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

    #Run named container
    docker container run --name [container_name] [docker_image]

    #Run container in the background
    docker container run -d [docker_image]

    #Run container interactively
    docker container run -it [docker_image] /bin/bash

    #Run container and publish container ports
    -p [host_ip]:[host_port]:[container_port]

    #Run a container and mount host volume
    -v [/host/volume/location]:[/container/storage]

    #Run container and remove once container is stopped
    docker container run --rm [docker_image]

visit [hello_moby_dock](https://github.com/dwi13L/hello-moby-dock) for more details
