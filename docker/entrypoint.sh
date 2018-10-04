#!/bin/sh
set -e

if [[ "$1" = "daphne" ]]; then
    exec su-exec nobody "$@"
elif [[ "$1" = "nginx" ]]; then
    exec  nginx -g "daemon off;"
fi

exec "$@"
