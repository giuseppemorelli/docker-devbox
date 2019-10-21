#!/usr/bin/env bash

set -e

docker-compose exec web bash /var/www/html/docker/local/provision/bin/sudo_web_tasks.sh
docker-compose exec mysql bash /devbox/provision/bin/db_tasks.sh
docker-compose exec -u $UID web bash /var/www/html/docker/local/provision/bin/web_tasks.sh
docker-compose restart
