#!/usr/bin/env bash

# Use #1 to run OWAPI using uvloop for better performance
# Use #2 to run OWAPI without uvloop for compatibility reasons

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

#1
PYTHONPATH=. pipenv run asphalt run -l uvloop config.yml

#2
#PYTHONPATH=. pipenv run asphalt run config.yml

exit 0
