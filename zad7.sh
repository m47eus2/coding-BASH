#!/bin/bash

DATE=`date '+%Y-%m-%d'`

if ! [ -d ./backup ]
then
	mkdir ./backup
fi

for file in $*
do
	if [ -e $file ]
	then
		if ! [ -e ./backup/${file}_${DATE} ]
		then
			cp $file ./backup/${file}_${DATE}
		else
			echo "File ${file}_${DATE} already exists"
			break
		fi
	else
		echo "File ${file} does not exist"
	fi
done
