# m239-docker

## Install Docker

```bash
sudo apt install docker.io
```

## Clone and execute composer to start the 3 VMs

```bash
git clone https://github.com/noah44846/m239-docker
cd m239-docker
docker-compose up -d
```

## Run /bin/bash on a container

```bash
docker exec -it <name of container> /bin/bash
```
