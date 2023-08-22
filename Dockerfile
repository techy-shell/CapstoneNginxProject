FROM ubuntu:18.04

WORKDIR /venv

RUN apt-get -y update \
    && apt-get install -y nginx==1.25 --no-install-recommends \
    &&  rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./www /www

EXPOSE 80
CMD ["nginx"]