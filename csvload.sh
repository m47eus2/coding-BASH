#!/bin/bash

echo "===================="
wiek_drzew=0

while IFS="," read INDEX STATUS WYSOKOSC WIEK ETC
do
	wiek_drzew=$((wiek_drzew + WIEK))
done < <(tail -n +2 $1)
echo $wiek_drzew

echo "===================="
wiek_drzew=0

tail -n +2 $1 | while IFS="," read INDEX STATUS WYSOKOSC WIEK ETC
do
	wiek_drzew=$((wiek_drzew + WIEK))
	echo $wiek_drzew
done

echo "===================="
wiek_drzew=0

{
read

while IFS="," read INDEX STATUS WYSOKOSC WIEK ETC
do
	wiek_drzew=$((wiek_drzew + WIEK))
done
} < $1
echo $wiek_drzew

echo "===================="
wiek_drzew=0

wysokosci=$(tail -n +2 "$1" | cut -d, -f4)
for WYSOKOSC in $wysokosci
do
	wiek_drzew=$((wiek_drzew + WYSOKOSC))
done
echo $wiek_drzew