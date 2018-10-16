# Dependent Graph Releaser Docker Image
This docker image bundles jenkins (dockerfile and co are largely copied from [https://github.com/jenkinsci/docker](https://github.com/jenkinsci/docker) also licensed under MIT)
and TODO gitlab.

It shall ease the development process by providing a local jenkins with predefined jobs so that one can test out new 
features.


!! Do not use the docker image for production !!

# Getting started

1. [Install docker](https://docs.docker.com/install/)
2. clone this repo
3. Build the docker file
   ```
   docker build -t dgr-jenkins:latest .
   ```
4. Start jenkins with (adjust ports in docker-compose.yml if 8080 is already taken) 
   ```
   compose-docker up -d
   ```
5. browser to [http://localhost:8080](http://localhost:8080)
6. Login with user `admin` and password `admin`

7. Stop the image with 
   ```
   docker stop dgr-jenkins
   ```

# License
Licensed under [MIT](https://opensource.org/licenses/MIT)