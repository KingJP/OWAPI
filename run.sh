#!/usr/bin/env bash

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

cd /opt/OWAPI

python3.5 -m venv ./venv

source ./venv/bin/activate
PYTHONPATH=. asphalt run -l uvloop config.yml

exit 0
