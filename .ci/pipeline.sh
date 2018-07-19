#!/bin/bash

set -eu

declare -a PHP_VERSIONS=(5.5 5.6 7.0 7.1 7.2 latest)
DOCKER_INDEX="index.docker.io/robbrazier/php"

echo "steps:"
for phpver in ${PHP_VERSIONS[@]}; do
    echo "  - label: 'Build :php: $phpver'"
    echo "    plugins:"
    echo "      docker-compose#v2.5.0:"
    echo "        no-cache: true"
    echo "        build: php${phpver//\./}"
done
echo "  - wait"
for phpver in ${PHP_VERSIONS[@]}; do
    SERVICE_NAME="php${phpver//\./}"
    echo "  - label: 'Push :php: $phpver'"
    echo "    branches: 'master'"
    echo "    plugins:"
    echo "      docker-login#v2.0.0:"
    echo "        username: robbrazier"
    echo "        password-env: DOCKER_LOGIN_PASSWORD"
    echo "      docker-compose#v2.5.0:"
    echo "        push:"
    echo "          - $SERVICE_NAME:$DOCKER_INDEX:$phpver"
done