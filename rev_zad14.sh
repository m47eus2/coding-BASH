#!/bin/bash

for ARG in $*
do
	SIZE_ACCUM=0
	SIZES=`ls -l *."$ARG" | tr -s ' ' | cut -d ' ' -f5`
	for SIZE in $SIZES
	do
		SIZE_ACCUM=$((SIZE_ACCUM + SIZE))
	done
	echo "${ARG}: ${SIZE_ACCUM}"
done
