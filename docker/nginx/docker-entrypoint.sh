#!/usr/bin/env sh
set -eu

envsubst '${APP_CONTAINER}' < /etc/nginx/conf.d/site.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"