FROM alpine:3.19.1 as lftp

RUN apk --no-cache add lftp

WORKDIR /files
#VOLUME ["$LOCAL_PATH"]

COPY image-script-download.sh /download.sh
COPY image-script-help.sh /help.sh
COPY image-script-upload.sh /upload.sh

CMD ["/help.sh"]
