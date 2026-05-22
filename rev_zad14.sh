#!/bin/bash

for ARG in $*
do
	SIZES=`ls -l *."$ARG" | tr -s ' ' | cut -d ' ' -f5`
	for SIZE in $SIZES
	do
		echo $SIZE
	done
done
