FROM ubuntu:18.04

RUN apt-get update &&\
     apt-get install -y nginx --no-install-recommends

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./www /www

EXPOSE 80
CMD ["nginx"]