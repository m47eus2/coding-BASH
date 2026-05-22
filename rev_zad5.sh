#!/bin/bash

echo -n "" > raport.txt

for FILE in *txt
do
	if [ "$FILE" != raport.txt ]
	then
		CTRLSUM=`md5sum "$FILE" | cut -d ' ' -f1`
		echo ${FILE}" "${CTRLSUM} >> raport.txt
	fi
done
