#!/bin/bash

# Data Folder For Docs...
TRILIUMDATAPATH=/home/trilium-data
mkdir -p $TRILIUMDATAPATH
sudo chmod 777 $TRILIUMDATAPATH

docker run -itd \
    --name trilium_doc \
    -p 27666:8080 \
    -v $TRILIUMDATAPATH:/home/node/trilium-data \
    --restart=always \
    zadam/trilium:0.53.2
