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
cp /var/www/html/docker/local/config/php/7.3/mods-available/xdebug-custom.ini /etc/php/7.3/mods-available/xdebug-custom.ini
rm /etc/php/7.3/apache2/conf.d/90-xdebug-3.ini
rm /etc/php/7.3/cli/conf.d/90-xdebug-3.ini
