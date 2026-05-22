#!/bin/bash

CHARS=0

for ARG in $*
do
	CH=`cat $ARG | wc -c`
	CHARS=$((CHARS + CH))
done
echo $CHARS
