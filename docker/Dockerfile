FROM ubuntu:14.04

RUN apt-get update && apt-get install -y curl \
  && curl -O https://imposm.org/static/rel/imposm3-0.2.0dev-20160615-d495ca4-linux-x86-64.tar.gz \
  && mkdir /opt/imposm3 \
  && tar -xf imposm3*.tar.gz -C /opt/imposm3 --strip-components=1 \
  && rm *.tar.gz \
  && ln -s /opt/imposm3/imposm3 /usr/bin/imposm3

COPY import-waterways.sh /import-waterways.sh
COPY waterways-mappings.json /waterways-mappings.json

ENTRYPOINT ["/import-waterways.sh"]
