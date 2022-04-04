#!/bin/bash 

i=0
while (( $i <= 11  ))
do	
	((i++))
	coin=$((RANDOM%2))
	if [ $coin -eq 1 ];
		then
		    echo "heads"
		else
		    echo "tails"
	fi	
done
