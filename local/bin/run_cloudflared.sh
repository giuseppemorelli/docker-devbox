#!/usr/bin/env bash

docker-compose run --rm cloudflared tunnel --url "$@"
