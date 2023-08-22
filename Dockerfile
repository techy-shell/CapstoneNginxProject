FROM ubuntu:18.04

WORKDIR /venv

# hadolint ignore=DL3008
RUN apt-get -y update \
    && apt-get install -y nginx --no-install-recommends \
    &&  rm -rf /var/lib/apt/lists/*


COPY nginx.conf /etc/nginx/nginx.conf
COPY ./www /www

EXPOSE 80
CMD ["nginx"]

