# Simple Node App in Docker for Windows

This is a proof of concept, which builds a docker image to run in Windows.

## Current Issues

```
GIVEN:
* The docker container is running

WHEN:
* Opening http://localhost:3000

THEN:
* I expect a response

Current Issue:
* No response
* Note: nginx works while this doesn't, see below
```

## How to set up

### Prerequisite
* Env: Windows 11 Home (x64)
* Install Docker Desktop for Windows - https://docs.docker.com/desktop/install/windows-install/

#### Test Installation
The installation is fine because it works when running the below:
* docker pull nginx
* docker container run -p 80:80 --name nginx-container nginx
* Open (in host browser) http://localhost

### Build Docker image

```
docker image build -t node-temp .
```

### Run container

```
docker container run --rm -it -p 3000:3000 --name node-temp-container node-temp
```
