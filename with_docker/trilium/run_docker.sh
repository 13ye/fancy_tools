#!/bin/bash

# Data Folder For Docs...
TRILIUMDATAPATH=/home/trilium-data
mkdir -p $TRILIUMDATAPATH
chmod 777 $TRILIUMDATAPATH

docker run -itd \
    --name trilium_doc \
    -p 27543:8080 \
    -v $TRILIUMDATAPATH:/home/node/trilium-data \
    zadam/trilium:0.50.2
