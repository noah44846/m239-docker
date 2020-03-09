# m239-docker

## Install Docker

```bash
sudo apt install docker.io
```

## Clone and execute composer to start the 3 VMs

```bash
cd
git clone https://github.com/noah44846/m239-docker
cd m239-docker
```

Modify the `Dockerfile` and `docker-compose.yml` files with the right IP and username/password

Execute compose :

```bash
docker-compose up -d
```

## Run /bin/bash on a container

```bash
docker exec -it <name of container> /bin/bash
```
