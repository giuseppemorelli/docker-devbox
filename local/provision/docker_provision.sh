#!/usr/bin/env bash

############################################
# De-comment rows that you need to execute #
############################################

set -e

## FOR LAMP STACK
# docker-compose exec web bash /var/www/html/docker/provision/bin/sudo_web_tasks.sh
# echo "Set password for user www-data"
# docker-compose exec web /bin/bash -c "passwd www-data"
# docker-compose exec web bash /var/www/html/docker/provision/bin/disable_xdebug.sh
# docker-compose exec mysql bash /devbox/provision/bin/db_tasks.sh
# docker-compose exec -u $UID web bash /var/www/html/docker/provision/bin/web_tasks.sh
# docker-compose exec -u $UID web bash /var/www/html/docker/provision/bin/install_ohmyzsh_shell.sh

## FOR NODE.JS STACK
# docker-compose run nodejs bash /home/node/docker/provision/bin/nodejs_tasks.sh

## FOR GOLANG STACK
# docker-compose exec -u $UID golang bash /home/gouser/docker/provision/bin/install_ohmyzsh_shell.sh

docker-compose restart
