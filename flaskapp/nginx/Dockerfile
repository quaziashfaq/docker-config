# Refreshed at 2020-11-25 001
FROM ash/ubuntu

RUN apt update; apt upgrade -y
RUN apt install -y nginx

RUN rm -f /etc/nginx/conf.d/default.conf
RUN rm -f /etc/nginx/sites-enabled/default

COPY nginx.conf /etc/nginx/conf.d/

EXPOSE 9090
ENTRYPOINT ["nginx", "-g", "daemon off;"]
