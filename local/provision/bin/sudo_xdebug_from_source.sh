#!/usr/bin/env bash

set -e

# downgrade to xdebug 2.9
apt-get remove --purge php-xdebug -y
cd /opt/
git clone https://github.com/xdebug/xdebug.git xdebug
cd xdebug
git checkout 2.9.8
phpize
./configure --enable-xdebug
make
make install

# replace xdebug 3 with xdebug 2 config
cp /var/www/html/docker/config/php/mods-available/xdebug-custom.ini /etc/php/"$PHP_VERSION"/mods-available/xdebug-custom.ini
rm /etc/php/"$PHP_VERSION"/apache2/conf.d/90-xdebug-3.ini
rm /etc/php/"$PHP_VERSION"/cli/conf.d/90-xdebug-3.ini
