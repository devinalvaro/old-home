FROM ubuntu:19.04

RUN apt-get update && apt-get install -y \
        git \
        sudo \
        wget

COPY home /home
WORKDIR /home
ENV HOME /home

RUN .local/bin/bootstrap-ubuntu.sh

CMD ["fish"]
