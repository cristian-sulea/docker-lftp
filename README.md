# docker-lftp

Quickly transfer (download/upload)files using LFTP installed in a Docker container.

## Usage

```shell
./lftp-upload.sh   [server] [username] [password] [src-folder]
```

- whole directory three (`scr-folder`) folder is **uploaded** to the remote server

```shell
./lftp-download.sh [server] [username] [password] [dst-folder]
```
- whole directory three (`dst-folder`) folder is **downloaded** from the remote server