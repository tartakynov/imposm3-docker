FROM ubuntu:14.04

RUN apt-get update \
    && apt-get install -y wget

COPY run.sh /run.sh
wget https://imposm.org/static/rel/imposm3-0.2.0dev-20160615-d495ca4-linux-x86-64.tar.gz
