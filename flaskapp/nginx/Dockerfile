#FROM nginx
FROM ash/ubuntu

RUN apt update; apt upgrade -y
RUN apt install -y nginx

RUN rm -f /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/

EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
