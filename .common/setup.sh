#!/bin/sh

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
composer self-update
apk add --no-cache bash gosu git apk-tools --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/
mkdir -p $COMPOSER_HOME /var/app
chown -R nobody:nobody $COMPOSER_HOME /var/app
