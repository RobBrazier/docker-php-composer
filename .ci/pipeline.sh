#!/bin/bash

set -eu

declare -a PHP_VERSIONS=(5.6 7.0 7.1 7.2 latest)
DOCKER_INDEX="index.docker.io/robbrazier/php"

echo "steps:"
echo "  - label: 'Build :php: builder'"
echo "    plugins:"
echo "      docker-compose#v2.5.0:"
echo "        no-cache: true"
echo "        build: builder"
echo "  - wait"
echo "  - label: 'Push :php: builder'"
echo "    plugins:"
echo "      docker-login#v1.0.0:"
echo "        username: robbrazier"
echo "        password-env: DOCKER_LOGIN_PASSWORD"
echo "      docker-compose#v2.5.0:"
echo "        push:"
echo "          - builder:$DOCKER_INDEX:builder"

# echo "  - wait"
# for phpver in ${PHP_VERSIONS[@]}; do
#     echo "  - label: ':php: $phpver'"
#     echo "    plugins:"
#     echo "      docker-compose#v2.5.0:"
#     echo "        build: php${phpver//\./}"
# done
