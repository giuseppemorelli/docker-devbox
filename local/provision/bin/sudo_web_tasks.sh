#!/usr/bin/env bash

set -e

# apt-get update && apt-get install -y nano

cp /var/www/html/docker/local/config/php/7.2/mods-available/devbox.ini /etc/php/7.2/apache2/conf.d/devbox.ini
cp /var/www/html/docker/local/config/php/7.2/mods-available/devbox.ini /etc/php/7.2/cli/conf.d/devbox.ini

# set permission to user on temp folder
chown "$APACHE_USER_UID":"$APACHE_USER_GID" /var/www/html/docker/local/tmp -R
