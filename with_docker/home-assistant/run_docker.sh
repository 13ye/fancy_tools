#!/bin/bash

# Data Folder For Docs...
HAHOMEPATH=/home/HASSITANT
mkdir -p $HAHOMEPATH/config
sudo chmod 777 $HAHOMEPATH

docker run -d \
  --name homeassistant \
  --privileged \
  --restart=always \
  -e TZ=CST \
  -v $HAHOMEPATH/config:/config \
  -p 38123:8123 \
 homeassistant/home-assistant:2022.7
