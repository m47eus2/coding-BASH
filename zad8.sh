#!/bin/bash

while ! [ -e $1 ]; do
	echo "Waiting for ./${1}"
	sleep 1
done

echo "====== Found ./${1} ======"

cat ./${1}
