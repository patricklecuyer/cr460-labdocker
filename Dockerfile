# Section 1
FROM ubuntu

# Section 2
RUN apt-get update
RUN apt-get -y install nginx
COPY index.html /var/www/html


# Section 3
EXPOSE 80
ENTRYPOINT /usr/sbin/nginx -g "daemon off;"
