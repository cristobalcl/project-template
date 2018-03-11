#!/bin/bash

set -e

ENV=".env"

NAME="project_name"

cd "$(dirname "$0")/.."

echo "Starting $NAME as `whoami`..."
echo

exec $ENV/bin/python # ...
