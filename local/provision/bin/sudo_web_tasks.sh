#!/usr/bin/env bash

set -e

apt-get update && apt-get install -y zsh nano sudo

cp /var/www/html/docker/config/php/mods-available/devbox.ini /etc/php/"$PHP_VERSION"/apache2/conf.d/devbox.ini
cp /var/www/html/docker/config/php/mods-available/devbox.ini /etc/php/"$PHP_VERSION"/cli/conf.d/devbox.ini

# set permission to user on temp folder
chown "$APACHE_USER_UID":"$APACHE_USER_GID" /var/www/html/docker/tmp -R

adduser www-data sudo
