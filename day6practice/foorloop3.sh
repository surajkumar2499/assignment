#!/bin/bash

read -p "Enter Number to check prime or not : " userInput

for (( i=2;i<=userInput/2;i++))
do
	if [ $((userInput%i)) -eq 0 ]
		then
		echo "Number $i is not prime"
		exit
	fi
done
echo "$i is prime Number"
