FROM ubuntu:18.04

RUN apt-get update && apt-get full-upgrade -y && apt-get autoremove -y && apt-get install -y sudo iproute2 dnsutils iputils-ping
RUN useradd -d /home/noah/ -m -p noah -s /bin/bash noah
RUN usermod -aG sudo noah
RUN echo "noah:noah" | chpasswd

WORKDIR /home/noah

USER noah
