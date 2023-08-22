FROM ubuntu:18.04

RUN apt-get update && apt-get install -y nginx==1.25 --no-install-recommends\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./www /www

EXPOSE 80
CMD ["nginx"]