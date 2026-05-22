#!/bin/bash

function fibonacci {
    BUFF="$NEW"
    NEW=$((PREV + NEW))
    PREV="$BUFF"
}

if [ "$1" -eq 0 ]; then
    echo 0
elif [ "$1" -eq 1 ]; then
    echo 1
elif [ "$1" -eq 2 ]; then
    echo 1
else
    PREV=1
    NEW=1

    for (( i=3; i<=$1; i++ ))
    do
        fibonacci
    done
    echo $NEW
fi
