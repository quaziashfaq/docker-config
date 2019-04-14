FROM ash/ubuntu
LABEL maintainer="quazi.ashfaq@gmail.com"
RUN apt-get update; apt-get --yes upgrade
RUN apt-get install --yes apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

ENV REFRESHED_AT 2019-04-06
ONBUILD ADD index.html /var/www/html/
EXPOSE 80
EXPOSE 443
#ENTRYPOINT ["/usr/sbin/apachectl"]
#CMD ["-D", "FOREGROUND"]
