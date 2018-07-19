#!/bin/sh

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
apk add --no-cache bash gosu git --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/
mkdir -p $COMPOSER_HOME /var/app
chown -R nobody:nobody $COMPOSER_HOME /var/app
gosu nobody composer global require hirak/prestissimo --no-progress
