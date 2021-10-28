#!/bin/sh

if [ -z $1 ]; then
    sls remove
else
    sls remove --stage $1
fi