#!/usr/bin/env bash

docker-compose exec web bash /var/www/html/docker/provision/bin/enable_xdebug.sh
docker-compose restart web
