#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."

ENV=".env"

if [ -f manage.py ]; then
    echo "==> Creating database…"
    $ENV/python manage.py flush --no-input
    $ENV/python manage.py migrate

    echo "==> Creating admin user…"
    $ENV/python manage.py createsuperuser
fi
