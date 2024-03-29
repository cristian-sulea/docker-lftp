#!/bin/sh

docker build -f image-lftp.dockerfile -t lftp .
docker tag lftp cristiansulea/lftp:3.19.1-r0
docker rmi lftp
