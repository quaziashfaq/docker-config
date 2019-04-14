# Version 1.0.0

FROM ash/ubuntu
LABEL maintainer="quazi.ashfaq@gmail.com"


ENV REFERSHED_AT 2019-04-06
RUN apt-get install -y nginx

RUN echo 'Hi, I am in your container' > /var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
HEALTHCHECK --interval=10s --timeout=1m --retries=5 CMD curl http://localhost || exit 1
