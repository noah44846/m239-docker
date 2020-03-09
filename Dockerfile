FROM ubuntu:19.10

RUN apt-get update && apt-get install -y sudo net-tools iputils-ping
RUN useradd -d /home/noah/ -m -p noah -s /bin/bash noah
RUN usermod -aG sudo noah
RUN echo "noah:noah" | chpasswd

WORKDIR /home/noah

USER noah
