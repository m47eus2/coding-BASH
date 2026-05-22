#!/bin/bash

RES=`diff $1 $2`

if ! [ -n "$RES" ]
then
    echo "Files identical"
else
    FILE1LINES=`cat $1 | wc -l`
    FILE2LINES=`cat $2 | wc -l`
    if [ $FILE1LINES -gt $FILE2LINES ]
    then
        echo "File 1 has more lines"
    else 
        echo "File 2 has more lines"
    fi
fi