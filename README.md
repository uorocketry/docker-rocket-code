# docker-rocket-code

Compile the rocket-code repo with Docker!

## Get Started

### 1. Install Docker

Install docker compose by following [those steps](https://docs.docker.com/compose/install/)

Install Docker engine

#### For Ubuntu

install docker on linux by following [those steps](https://docs.docker.com/engine/install/ubuntu/)
* note: On linux you might need to use ``` sudo ``` each time you run a docker command

#### Mac
Install docker on mac by installing [Docker Desktop]

### 2. Git pull this repo

``` git pull https://github.com/uorocketry/docker-rocket-code.git ```

### 3. Setup your environment

Go in the .env file, and modify it to include the location of the rocket-code repo
``` LOCATION=location/of/rocket-code ```

### 4. Build and run the container

Go to the location of the repo, and execute this command ``` docker-compose up -d ```
Docker already setup everything for you

### 5. Get a shell inside the container
To get a shel inside the container, do ```docker ps``` and note the CONTAINER ID

Then, execute ``` docker exec -it [CONTAINER ID] bash ``` and you should get a shell. To exit, type ``` exit ```

Now you should be able to go to /root/rocket_code and see the project. You can try to run ./build.sh and it should work. You should also be able to run the code.

## Other useful commands

``` docker ps ``` List the running containers

``` docker ps -a ``` List all containers

``` docker container rm [CONTAINER ID]``` Delete container with CONTAINER ID

``` docker kill [CONTAINER ID] ``` Kill the container with CONTAINER ID

``` docker images ``` List all images

``` docker image rm [IMAGE ID] ``` Remove the image with IMAGE ID

``` docker-compose up -d --build ``` start service but by building the images again
