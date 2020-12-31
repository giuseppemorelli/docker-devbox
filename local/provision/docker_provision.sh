#!/usr/bin/env bash

set -e

## FOR LAMP STACK
#docker-compose exec web bash /var/www/html/docker/local/provision/bin/sudo_web_tasks.sh
#docker-compose exec web bash /var/www/html/docker/local/provision/bin/disable_xdebug.sh
#docker-compose exec mysql bash /devbox/provision/bin/db_tasks.sh
#docker-compose exec -u $UID web bash /var/www/html/docker/local/provision/bin/web_tasks.sh

## FOR NODE.JS STACK
# docker-compose run nodejs bash /home/node/docker/local/provision/bin/nodejs_tasks.sh

docker-compose restart
