#!/bin/bash

for file in *
do
	if [ -f "$file" ]
	then
		echo "$file -> file"
	elif [ -d $file ]
	then
		echo "$file -> dir"
	fi
done
