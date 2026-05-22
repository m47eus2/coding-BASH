#!/bin/bash

for arg in $*
do
	if [ -e $arg ] && [ -f $arg ]
	then
		echo "=================== "${arg}" ==================="
		cat $arg | sort
	fi
done
