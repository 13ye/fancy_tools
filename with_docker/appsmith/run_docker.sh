#!/bin/bash
docker run -d --name appsmith -p 3808:80 -p 9301:9001 -v "$PWD/appsmith-stacks:/appsmith-stacks" appsmith/appsmith-ce
docker logs -f appsmith
# You should see a message Appsmith is Running! once the container is ready
# visit http://ip:3808 to dashboard, visit http://ip:9301 to monitor
