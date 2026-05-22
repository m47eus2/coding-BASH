#!/bin/bash

for FILE in *"$2"
do
	echo $1 >> $FILE
done
