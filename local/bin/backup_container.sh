#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Please, specify a container name"
    exit 1
fi;

if [ -z "$2" ]; then
    echo "Please, specify a new container snapshot tag like my_container:yyyymmdd"
    exit 1
fi;

if [ "$1" == "help" ]; then
    echo "USAGE: \n"
    echo "bin/backup_container.sh [container name] [container_snapshot_tag:yyyymmdd]"
    exit 1
fi;

docker commit -p $1 $2
