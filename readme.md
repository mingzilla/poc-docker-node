# Simple Node App in Docker for Windows

This is a proof of concept, which builds a docker image to run in Windows.

### Build Docker image

```
docker image build -t node-temp .
```

### Run container

```
docker container run --rm -it -p 3000:3000 --name node-temp-container node-temp
```

## Trouble Shooting
* If this runs on 127.0.0.1, then the follow problem occurs
* If this runs on 0.0.0.0, then it's fine

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

## Environment
* Env: Windows 11 Home (x64)
* Install Docker Desktop for Windows - https://docs.docker.com/desktop/install/windows-install/
