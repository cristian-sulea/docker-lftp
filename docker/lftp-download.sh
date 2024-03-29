#! /bin/sh

docker run --rm \
           --env REMOTE_SERVER="$1" \
           --env USERNAME="$2" \
           --env PASSWORD="$3" \
           --env REMOTE_PATH="/" \
           --volume "$4":/files \
           cristiansulea/lftp:3.19.1-r0 /download.sh
