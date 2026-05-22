#!/bin/bash

for FILE in *.txt
do
	if [ $FILE != "raport.txt" ]
	then
		echo "==================== Checking ${FILE} ===================="
		cat raport.txt | while read LINE
		do
			FILENAME=`echo $LINE | cut -d ' ' -f1`
			if [ $FILENAME = $FILE ]
			then
				CTRLSUM=`md5sum $FILE | cut -d ' ' -f1`
				SAVESUM=`echo $LINE | cut -d ' ' -f2`
				if [ $CTRLSUM = $SAVESUM ]
				then
					echo "${CTRLSUM} | ${SAVESUM} -> PASSED! ✅"
				else
					echo "${CTRLSUM} | ${SAVESUM} -> FAILED! ❌"
				fi
				echo ""
				break
			fi
		done
	fi
done
