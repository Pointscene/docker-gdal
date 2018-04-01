FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

RUN add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    gdal-bin \
    python-gdal \
    python3-gdal
