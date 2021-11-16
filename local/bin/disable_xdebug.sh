#!/usr/bin/env bash

docker-compose exec web bash /var/www/html/docker/provision/bin/disable_xdebug.sh
docker-compose restart web
