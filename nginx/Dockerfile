FROM ash/ubuntu
LABEL maintainer="quazi.ashfaq@gmail.com"
ENV REFRESHED_AT 2020-11-22
RUN apt update; apt install -y nginx
RUN mkdir -p /var/www/html/website
ADD global.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

