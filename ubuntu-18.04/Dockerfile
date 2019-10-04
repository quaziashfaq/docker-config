# Version 1.0.0

FROM ubuntu:18.04
LABEL maintainer="quazi.ashfaq@gmail.com"

RUN echo 'Acquire::http { Proxy "http://192.168.56.11:3142"; };' > /etc/apt/apt.conf.d/02proxy

# The following 2 lines are not working. The error message says that it can't resolve the hostname. I ran one container and found that there is no mention of this host and ip in the /etc/hosts file. It means /etc/hosts file gets refreshed everytime I spin up a container from the image.
#RUN echo '172.17.0.1    ubuntu-apt-cacher-ng-host' >> /etc/hosts
#RUN echo 'Acquire::http { Proxy "http://ubuntu-apt-cacher-ng-host:3142"; };' > /etc/apt/apt.conf.d/02proxy

#COPY sources.list /etc/apt/
ADD sources.list /etc/apt/
RUN apt-get update; apt-get upgrade -y

ENV REFERSHED_AT 2019-04-06 001
RUN apt-get install -y apt-transport-https dnsutils iproute2 iputils-ping net-tools traceroute vim wget curl lynx

