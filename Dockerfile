FROM centos:latest
MAINTAINER Dmitry Svetly "crims0n@ya.ru"

ENV VERSION v4.22-9634-beta-2016.11.27

RUN wget http://www.softether-download.com/files/softether/${VERSION}-tree/Linux/SoftEther_VPN_Server/64bit_-_Intel_x64_or_AMD64/softether-vpnserver-${VERSION}-linux-x64-64bit.tar.gz -O /tmp/softether-vpnserver.tar.gz

EXPOSE 443/tcp 992/tcp 1194/tcp 1194/udp 5555/tcp 500/udp 4500/udp

CMD ["/usr/vpnserver/vpnserver","execsvc"]
