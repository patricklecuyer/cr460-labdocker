# Section 1
FROM ubuntu:17.04

# Section 2
RUN apt-get update
RUN apt-get -y install nginx
COPY files/index.html /var/www/html


# Section 3
EXPOSE 80
ENTRYPOINT /usr/sbin/nginx -g "daemon off;"
