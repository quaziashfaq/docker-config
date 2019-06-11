FROM ash/ubuntu
LABEL maintainer="quazi.ashfaq@gmail.com"
ENV REFRESHED_AT 2019-04-17
RUN apt-get --yes  update; apt-get -y install nginx
RUN mkdir -p /var/www/html/website
ADD global.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

