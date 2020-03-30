FROM ubuntu:18.04

RUN apt-get update && apt-get full-upgrade -y && apt-get autoremove -y && apt-get install -y sudo net-tools iputils-ping systemd
RUN useradd -d /home/username/ -m -p password -s /bin/bash username
RUN usermod -aG sudo username
RUN echo "username:password" | chpasswd

WORKDIR /home/noah

USER username
