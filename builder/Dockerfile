FROM php:alpine

COPY . /tmp/builder

ENV COMPOSER_HOME=/tmp/.composer \
    USER=nobody

RUN /tmp/builder/setup.sh

USER $USER
RUN composer global require hirak/prestissimo --no-progress