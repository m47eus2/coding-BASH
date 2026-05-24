#!/bin/bash

wiek_drzew=0

#while IFS="," read INDEX STATUS WYSOKOSC WIEK ETC
#do
#	wiek_drzew=$((wiek_drzew + WIEK))
#done < <(tail -n +2 $1)

#tail -n +2 $1 | while IFS="," read INDEX STATUS WYSOKOSC WIEK ETC
#do
#	wiek_drzew=$((wiek_drzew + WIEK))
#	echo $wiek_drzew
#done

{
read

while IFS="," read INDEX STATUS WYSOKOSC WIEK ETC
do
	wiek_drzew=$((wiek_drzew + WIEK))
done
} < $1

echo $wiek_drzew
