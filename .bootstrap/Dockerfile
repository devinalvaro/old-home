FROM ubuntu:19.04

RUN apt-get update && apt-get install -y \
        git \
        wget

COPY home /home
WORKDIR /home
ENV HOME /home

RUN .bootstrap/bootstrap-ubuntu-docker.sh

CMD ["fish"]
