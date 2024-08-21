#!/bin/bash

if [ -z "$1"  ]; then
    echo "Enter file name"
    exit 1
fi

file=$1

sudo updatedb

locate "$file"
head -n 4 "$file"