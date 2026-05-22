#!/bin/bash

ARGNUM=1

for ARG in $*
do
	LINENUM=`cat $ARG | wc -l`
	if [ $LINENUM -lt $ARGNUM ]
	then
		echo "Error: file to short"
	else 
		tail -n $ARGNUM $ARG | head -n 1
	fi
	ARGNUM=$((ARGNUM + 1))
done
