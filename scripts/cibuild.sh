#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."

echo "==> Tests started at: $(date "+%F %H:%M:%S")"
echo

scripts/test.sh
