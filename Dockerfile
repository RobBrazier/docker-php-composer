FROM php:alpine

RUN \
  apk add composer sudo --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ && \
  sh install.sh
