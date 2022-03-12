ARG IMAGE_VERSION=alpine

FROM php:${IMAGE_VERSION}

COPY .common /tmp

ENV COMPOSER_HOME /tmp/.composer

RUN /tmp/setup.sh

WORKDIR /var/app
ENTRYPOINT [ "/tmp/entrypoint" ]
CMD [ "php", "-a" ]