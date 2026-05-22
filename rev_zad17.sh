#!/bin/bash

for FILE in katalog/*
do
    CHARS=`cat "$FILE" | wc -c`
    mv "$FILE" katalog/"$CHARS"
done