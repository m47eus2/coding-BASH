#!/bin/bash

for arg in $*
do
	if [ -f "$arg" ]
	then
		echo "=================== $arg ==================="
		cat "$arg" | sort
	fi
done
