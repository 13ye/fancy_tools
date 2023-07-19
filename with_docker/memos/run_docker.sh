#!/bin/bash

# Data Folder For Docs...
MEMOSDATAPATH=/home/memos
mkdir -p $MEMOSDATAPATH

docker run -d --name memos -p 5230:5230 -v /home/memos/:/var/opt/memos neosmemo/memos:0.14.0
