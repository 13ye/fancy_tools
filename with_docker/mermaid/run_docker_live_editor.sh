#!/bin/bash

docker run -itd \
    --name mermaid-live-editor \
    --publish 36444:80 \
    johnsinclair73/mermaid-live-editor:8.13.3
