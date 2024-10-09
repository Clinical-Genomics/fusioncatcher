FROM ubuntu:18.04

LABEL Description="This image is used to run FusionCatcher" Version="1.34"


RUN apt-get -y clean \
    && apt-get -y update \
    && apt-get -y install \
    automake \
    build-essential \
    bzip2 \
    cmake \
    curl \
    g++ \
    gawk \
    gcc \
    gzip  \
    libc6-dev \
    libncurses5-dev \
    libtbb2 \
    libtbb-dev \
    make \
    parallel \
    pigz \
    python \
    python-dev \
    python-biopython \
    python-numpy \
    python-openpyxl \
    python-xlrd \
    tar \
    unzip \
    wget \
    zip \
    zlib1g \
    zlib1g-dev \
    zlibc \
    default-jdk \
    && apt-get -y clean

WORKDIR /opt

COPY ./bin ./bin

######################
## INSTALLATION
######################

RUN python ./bin/bootstrap.py -t -y -i /opt/fusioncatcher/v1.34/


