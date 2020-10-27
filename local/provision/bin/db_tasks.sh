#!/usr/bin/env bash

echo "CREATE DATABASE"
# mysql -u root -pdocker -e "CREATE DATABASE mydatabase"
echo "SETTING UP local USER"
# for mysql < 8
mysql -u root -pdocker -e "REVOKE ALL PRIVILEGES ON *.* FROM 'local'@'%'; GRANT ALL PRIVILEGES ON *.* TO 'local'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;"
# for mysql >= 8
##  mysql -u root -pdocker -e "CREATE USER 'local'@'%' IDENTIFIED WITH mysql_native_password BY 'local';"
# mysql -u root -pdocker -e "GRANT ALL PRIVILEGES ON *.* TO 'local'@'%' WITH GRANT OPTION;"
