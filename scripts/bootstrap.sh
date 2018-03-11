#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."

ENV=".env"

echo "==> Updating package list…"
sudo apt-get update
echo "==> Installing base dependencies…"
sudo apt-get install -y python3 python3-virtualenv

if [ -e requirements.system ]; then
    echo "==> Installing system dependencies…"
    cat requirements.system | sudo xargs apt-get install -y
fi

if [ ! -d $ENV ]; then
    echo "==> Creating virtual environment…"
    virtualenv -p python3 $ENV
fi

if [ -e requirements.txt ]; then
    echo "==> Installing Python dependencies…"
    $ENV/bin/pip install -r requirements.txt
fi
