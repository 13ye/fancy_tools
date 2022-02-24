#!/bin/bash

TriliumDataPath=/home/trilium-data

docker run -itd \
    --name trilium_doc \
    -p 27543:8080 \
    -v $TriliumDataPath:/home/node/trilium-data \
    zadam/trilium:0.50.2
