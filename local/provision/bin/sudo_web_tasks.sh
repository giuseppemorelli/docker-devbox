#!/usr/bin/env bash

set -e

# apt-get update && apt-get install -y nano

# fix Header may not contain NUL bytes in Unknown on line 0
# install 2.9 version
# pecl config-set php_ini  /etc/php/7.3/apache2/php.ini
# pecl install xdebug

cp /var/www/html/docker/local/config/php/7.2/mods-available/devbox.ini /etc/php/7.2/apache2/conf.d/devbox.ini
cp /var/www/html/docker/local/config/php/7.2/mods-available/devbox.ini /etc/php/7.2/cli/conf.d/devbox.ini

# set permission to user on temp folder
chown "$APACHE_USER_UID":"$APACHE_USER_GID" /var/www/html/docker/local/tmp -R
