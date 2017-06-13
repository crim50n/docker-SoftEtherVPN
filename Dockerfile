FROM centos:latest
MAINTAINER Dmitry Svetly "crims0n@ya.ru"

ENV VERSION 4.22.9634

RUN yum install -y https://raw.githubusercontent.com/crim50n/docker-SoftEtherVPN/master/softethervpn-4.22.9634-1.el7.x86_64.rpm

EXPOSE 443/tcp 992/tcp 1194/tcp 1194/udp 5555/tcp 500/udp 4500/udp

CMD ["/usr/vpnserver/vpnserver","execsvc"]
