#!/usr/bin/env bash

set -e
set -u
set -o pipefail

IMAGE="${1}"

docker run --rm --entrypoint=php "${IMAGE}" -v | grep -E '^PHP 5\.3'
docker run --rm --entrypoint=php-fpm "${IMAGE}" -v | grep -E '^PHP 5\.3'
