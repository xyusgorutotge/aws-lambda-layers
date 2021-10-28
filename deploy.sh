#!/bin/sh

if [ $(dirname $0) = "." ]; then
    [ ! -d ".venv" ] && virtualenv -p python3 .venv
    source .venv/bin/activate
    pip install -t ./common/python -r requirements.txt

    if [ -z $1 ]; then
        sls deploy
    else
        sls deploy --stage $1
    fi
else
    echo "error: you must be in the same folder to run this script"
fi