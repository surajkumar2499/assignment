#!/bin/bash -x

read -p "Enter Input start from : " userInput
read -p "Enter Output range : " userOutput

for (( i=$userInput;i<=$userOutput;i++))
do
	for (( j=2;j<=$i/2;j++))
	do
	if [ $((i%j)) -eq 0 ]
		then
		echo "Number $i is not prime"
		exit
	fi
	done
	echo "$i is prime Number"
done
