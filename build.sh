#!/usr/bin/env bash

docker build docker -t imposm3
docker run --rm -it --name imposm --link postgis:postgis -v ~/Downloads/osm:/osm imposm3
