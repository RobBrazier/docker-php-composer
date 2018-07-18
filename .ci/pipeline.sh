#!/bin/bash

set -eu

declare -a PHP_VERSIONS=(5.6 7.0 7.1 7.2 latest)

echo "steps:"
echo "  - label: ':php: builder'"
echo "    plugins:"
echo "      docker-compose#v2.5.0:"
echo "        build: builder"
for phpver in ${PHP_VERSIONS[@]}; do
    echo "  - label: ':php: $phpver'"
    echo "    plugins:"
    echo "      docker-compose#v2.5.0:"
    echo "        build: php${phpver//\./}"
done
