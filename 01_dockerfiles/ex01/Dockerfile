FROM ubuntu
MAINTAINER HStander hstander@student.wethinkcode.co.za

RUN apt-get update
RUN apt-get -y install wget bzip2
RUN wget http://dl.4players.de/ts/releases/3.3.1/teamspeak3-server_linux_amd64-3.3.1.tar.bz2
RUN tar -xf teamspeak3-server_linux_amd64-3.3.1.tar.bz2
RUN touch teamspeak3-server_linux_amd64/.ts3server_license_accepted
EXPOSE 9987/udp 10011 30033
VOLUME /teamspeak3-server_linux_amd64
WORKDIR /teamspeak3-server_linux_amd64
ENTRYPOINT [ "sh", "-c", "./ts3server_startscript.sh start && /bin/bash"]