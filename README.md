# Dependent Graph Releaser Docker Image
This docker image bundles jenkins (dockerfile and co are largely copied from [https://github.com/jenkinsci/docker](https://github.com/jenkinsci/docker) also licensed under MIT)
and TODO gitlab.

It shall ease the development process by providing a local jenkins with predefined jobs so that one can test out new 
features.


!! Do not use the docker image for production !!

# Getting started

## Build docker files

You need to build the docker images once, afterwards it suffices to just call compose-docker

1. [Install docker](https://docs.docker.com/install/) (if you don't have it yet)
2. clone this repo
3. Build the jenkins docker file
   ```
   docker build -t dgr-jenkins:v1 ./jenkins2
   ```

## Start/Stop Jenkins & GitLab 
 
You can use the `compose-docker` file which starts jenkins on port 8080 and Gitlab on port 9090. 
Either adjust the ports in the file or start the image `dgr-jenkins:v1` and `gitlab/gitlab-ce:11.2.5-ce.0` and configure the ports via CLI arguments.
 
1. Start jenkins and gitlab
   ```
   compose-docker up -d
   ```
2. Open [http://localhost:8080](http://localhost:8080)
3. Login with user `admin` and password `admin`
4. Open [http://localhost:9090](http://localhost:9090)
5. Specify the password for the user `root`, use `adminadmin` as password

6. Stop Jenkins and Gitlab with 
   ```
   docker-compose down
   ```

# License
Licensed under [MIT](https://opensource.org/licenses/MIT)