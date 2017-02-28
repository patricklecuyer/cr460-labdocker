FROM ubuntu

RUN apt-get update &&\
    apt-get -y install nginx

COPY index.html /var/www/html

EXPOSE 80

ENTRYPOINT /usr/sbin/nginx -g "daemon off;"
