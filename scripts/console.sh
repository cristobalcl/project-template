#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."

ENV=".env"

if [ -n "$1" ]; then
    if [ "$1" = "env" ]; then
        echo "==> Launching shell in virtual environment…"
        source $ENV/bin/activate
        eval $SHELL
    elif [ "$1" = "django" ]; then
        echo "==> Launching Django Python shell…"
        $ENV/bin/python manage.py shell
    elif [ "$1" = "django_db" ]; then
        echo "==> Launching Django database shell…"
        $ENV/bin/python manage.py dbshell
    fi
else
    echo "==> Launching Python shell…"
    $ENV/bin/python
fi
