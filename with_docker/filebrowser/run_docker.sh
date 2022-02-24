#!/bin/bash

# default user/pw is admin/admin
FILEBROWSER_HOME=/home/filebrowser

docker run -itd \
    --name filebrowser \
    -v $FILEBROWSER_HOME/root:/srv \
    -v $FILEBROWSER_HOME/filebrowser.db:/database/filebrowser.db \
    -u $(id -u):$(id -g) \
    -p 14480:80 \
    filebrowser/filebrowser:v2.21.1

    #-v $FILEBROWSER_HOME/.filebrowser.json:/.filebrowser.json \

