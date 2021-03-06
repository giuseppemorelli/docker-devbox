#!/usr/bin/env bash

set -e

# apt-get update && apt-get install -y nano

cp /var/www/html/docker/local/config/php/"$PHP_VERSION"/mods-available/devbox.ini /etc/php/"$PHP_VERSION"/apache2/conf.d/devbox.ini
cp /var/www/html/docker/local/config/php/"$PHP_VERSION"/mods-available/devbox.ini /etc/php/"$PHP_VERSION"/cli/conf.d/devbox.ini

# set permission to user on temp folder
chown "$APACHE_USER_UID":"$APACHE_USER_GID" /var/www/html/docker/local/tmp -R
