FROM robbrazier/php:builder as builder

FROM php:7.2-alpine

ENV COMPOSER_HOME /tmp/.composer
COPY --from=builder /tmp /tmp

RUN /tmp/builder/setup.sh

WORKDIR /var/app
ENTRYPOINT [ "/tmp/builder/entrypoint" ]
CMD [ "php", "-a" ]