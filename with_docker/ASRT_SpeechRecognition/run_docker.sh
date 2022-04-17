#!/bin/bash
docker pull ailemondocker/asrt_service:1.2.0
docker run --rm -it -p 20001:20001 --name asrt-server -d ailemondocker/asrt_service:1.2.0
