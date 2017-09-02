FROM php:7.2-rc-alpine

RUN \
  apk add composer --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ && \
  composer global require hirak/prestissimo --no-progress
