#!/usr/bin/env bash

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

cd /opt/OWAPI

# PYTHONPATH=. asphalt run -l uvloop config.yml
PYTHONPATH=. pipenv run asphalt run config.yml

exit 0
