FROM ubuntu:19.10

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sudo net-tools iputils-ping
RUN useradd -d /home/username/ -m -p password -s /bin/bash username
RUN usermod -aG sudo username
RUN echo "username:password" | chpasswd

WORKDIR /home/username

USER username
