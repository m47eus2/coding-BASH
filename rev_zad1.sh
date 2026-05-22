#!/bin/bash

DIR=$1

if ! [ -d $DIR ]
then
	echo "Directory does not exist"
else
	find $DIR -maxdepth 1 -name "*.sh" -mtime -7 -exec chmod +x {} \; -print
fi
