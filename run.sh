#!/usr/bin/env bash

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

cd /opt/OWAPI

python3.5 -m venv ./venv

source ./venv/bin/activate
# pip install wheel
# pip install uvloop
# pip install -r requirements.txt

# PYTHONPATH=. asphalt run -l uvloop config.yml
PYTHONPATH=. asphalt run config.yml

exit 0
