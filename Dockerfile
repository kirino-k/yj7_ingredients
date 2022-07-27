FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    python3-pip \
    wget \
    nkf

COPY requirements.txt /
RUN cd / && \
    pip3 install -r requirements.txt && \
    rm requirements.txt

ARG UID=1000
RUN useradd -m -u ${UID} docker
