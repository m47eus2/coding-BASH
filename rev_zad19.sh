#!/bin/bash

WORKDIR=.
if [ -n "$1" ]
then
    WORKDIR="$1"
fi

for FILE in "$WORKDIR"/*
do
    if [ -d "$FILE" ]
    then
        mv "$FILE" "${FILE^^}"
        ./rev_zad19.sh "$WORKDIR"/"${FILE^^}"
    fi
done
     