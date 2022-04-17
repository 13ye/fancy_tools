#!/bin/bash

mkdir -p pico_data/

docker run \
  --env "PORT=30011" \
  --env "PS_SHARED_SECRET=secretpass2bchange" \
  --publish 30011:30011/tcp \
  --volume "${PWD}/pico_data:/data" \
  --name picoshare \
  mtlynch/picoshare
