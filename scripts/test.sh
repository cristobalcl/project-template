#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."

ENV=".env"

if [ -f manage.py ]; then
    echo "==> Launching Django tests…"
    $ENV/python manage.py test
fi
