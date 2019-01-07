#! /bin/sh

docker build -t ts3 .
docker run -ti -p 9987:9987/udp -p 10011:10011 -p 30033:30033 -e TS3SERVER_LICENSE=accept ts3 /bin/bash