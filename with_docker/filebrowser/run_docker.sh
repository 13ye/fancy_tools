#!/bin/bash

# default user/pw is admin/admin
FILEBROWSER_HOME=/home/filebrowser
mkdir -p $FILEBROWSER_HOME
chmod 777 $FILEBROWSER_HOME
touch $FILEBROWSER_HOME/filebrowser.db

docker run -itd \
    --name filebrowser \
    -v $FILEBROWSER_HOME/root:/srv \
    -v $FILEBROWSER_HOME/filebrowser.db:/database.db \
    -u $(id -u):$(id -g) \
    -p 14480:80 \
    filebrowser/filebrowser:v2.27.0

    #-v $FILEBROWSER_HOME/.filebrowser.json:/.filebrowser.json \
