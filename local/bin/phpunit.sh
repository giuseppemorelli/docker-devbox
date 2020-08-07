#!/usr/bin/env bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOCKER_COMPOSE_DIR=${SCRIPTDIR}/../

cd "$DOCKER_COMPOSE_DIR" || exit
docker-compose exec -T -u $UID web /var/www/html/project/vendor/bin/phpunit "$@"
