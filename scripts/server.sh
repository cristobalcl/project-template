#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."

if [ -f manage.py ]; then
    echo "==> Launching server…"
    $ENV/python manage.py runserver
fi
