#! /bin/sh

docker build -t gogs
docker run --name=gogs -p 10022:22 -p 3000:3000 -v /var/gogs:/data gogs/gogs