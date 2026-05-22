#!/bin/bash

mkdir pictures_backup

for FILE in *.jpg
do
	cp $FILE pictures_backup/${FILE}
	chmod 444 pictures_backup/${FILE}
done
