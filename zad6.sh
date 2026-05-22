#!/bin/bash

for dir in $*
do
	if [ $dir != $1 ] && [ -e $1 ] && [ -d $dir ]
	then
		cp $1 $dir
	fi
done
