#! /bin/sh

docker run --name $1 \
           --env REMOTE_SERVER="$2" \
           --env USERNAME="$3" \
           --env PASSWORD="$4" \
           --env REMOTE_PATH="/" \
           --volume "$5":/files \
           cristiansulea/lftp:3.19.1-r0 /download.sh
