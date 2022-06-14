# Version: 1.0
FROM ubuntu:18.04
LABEL maintainer="shamweel@outlook.com"
ENV REFRESHED_AT 2022-06-14
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "Hi, I'm a page from your container" > /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80
