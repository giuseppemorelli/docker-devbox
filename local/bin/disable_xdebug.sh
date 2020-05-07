#!/usr/bin/env bash

docker-compose exec web bash /var/www/html/docker/local/provision/bin/disable_xdebug.sh
docker-compose restart web
