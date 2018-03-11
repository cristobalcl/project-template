#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."

ENV=".env"

if [ -e requirements.system ]; then
    echo "==> Installing new system dependencies…"
    cat requirements.system | sudo xargs apt-get install -y
fi

if [ -e requirements.txt ]; then
    echo "==> Installing new Python dependencies…"
    $ENV/bin/pip install -r requirements.txt
fi
