# Version 1.0.0

FROM ubuntu:18.04
LABEL maintainer="quazi.ashfaq@gmail.com"
RUN echo 'Acquire::http { Proxy "http://192.168.56.1:3142"; };' > /etc/apt/apt.conf.d/02proxy
#COPY sources.list /etc/apt/
ADD sources.list /etc/apt/
RUN apt-get update; apt-get upgrade -y

ENV REFERSHED_AT 2019-04-06 001
RUN apt-get install -y apt-transport-https dnsutils iproute2 iputils-ping net-tools traceroute vim wget curl lynx

