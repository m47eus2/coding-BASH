#!/bin/bash

for ARG in $*
do
	cat $ARG | while read line
	do
		echo ${ARG}: ${line}
	done
done
