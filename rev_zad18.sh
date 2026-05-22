#!/bin/bash

while [ 1 -eq 1 ] 
do
    read INPUT
    if [ "$INPUT" = "EXIT" ]
    then
        exit 0
    else
        read INPUT_SIGNAL
        kill -"$INPUT_SIGNAL" "$INPUT"
    fi
done
