#!/usr/bin/env bash

for file in /osm/*.osm.pbf
do
  imposm3 import                                                \
      -connection postgis://postgres:postgres@postgis/osm       \
      -mapping waterways-mappings.json                          \
      -read "$file" -write
done
