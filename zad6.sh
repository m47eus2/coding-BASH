#!/bin/bash

for dir in $*
do
	if [ "$dir" != "$1" ] && [ -d "$dir" ]
	then
		cp "$1" "$dir"
	fi
done
