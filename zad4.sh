#!/bin/bash

for file in *
do
	if [ -f $file ]
	then
		echo ${file}" -> file"
	fi

	if [ -d $file ]
	then
		echo ${file}" -> dir"
	fi
done
