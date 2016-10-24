# sensu-stack
Stack of Docker images for monitoring infrastructure and applications with Sensu

# Stack overview
- Sensu Server
- Sensu API
- Sensu Client
- Uchiwa

# Getting started
Build image from ./sensu folder
```bash
$ docker build ./sensu --tag dialonce/sensu
```

Create Docker Volumes
```bash
$ docker volume create --name=sensu-graphite-application-data && \
docker volume create --name=sensu-carbon-cache-application-data && \
docker volume create --name=sensu-carbon-application-data
```

Start all services with Docker Compose
```bash
$ docker-compose up -d
```

# Accessing Web UI
- Uchiwa: http://localhost:3000/. Default credentials (change those!) are:
    - Username: ismar
    - Password: slomic
    
# Checks included
- Docker
- Rabbit MQ
- Redis
- Host-level checks (memory, CPU, disk usage)

# Credits
This repository is extension of [dial-once/sensu-stack](https://github.com/dial-once/sensu-stack). 
