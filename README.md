# vector-infrastructure

## Install

1. Make sure you have Docker installed before running startup

https://www.docker.com/

2. Clone this repository
```
git clone git@github.com:goncalomatos-ic/vector-infrastructure.git
```

## Run

TL;DR Startup.sh clones `API` and `APP` repo's, then `docker-compose build & run`

Startup.sh is a bash script that will do "magic" for us. It will start by cloning the APP and the API repositories and then it will start docker-compose build. When it's done, docker-compose run will fire up. Dockercompose file is responsible for starting up a PostgreSQL service, our API and also our APP. Each service dependencies are managed by each Dockerfile and it's respective package manager.

```
sh startup.sh
```

The API will be running on `localhost:8000` and the APP on `localhost:3000`

[API Documentation:](https://github.com/goncalomatos-ic/vector-api)
