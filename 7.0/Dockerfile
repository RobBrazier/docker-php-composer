FROM php:7.4.9-alpine

COPY .common /tmp

ENV COMPOSER_HOME /tmp/.composer

RUN /tmp/setup.sh

WORKDIR /var/app
ENTRYPOINT [ "/tmp/entrypoint" ]
CMD [ "php", "-a" ]