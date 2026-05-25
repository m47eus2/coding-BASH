#!/bin/bash

wk=0

{
read

while IFS="," read -r INDEX STATUS WYSOKOSC WIEK INNE
do
	echo "idx:  $INDEX"
	echo "stat: $STATUS"
	echo "wys:  $WYSOKOSC"
	echo "wiek: $WIEK"
	echo "inne: $INNE"
	wk=$((wk + WIEK))
done
} < "$1"

echo "Skumulowany wiek: $wk"
