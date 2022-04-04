#!/bin/bash 


read -p "Enter n number for 2^n : " userInput 
for (( i=1;i<=userInput;i++ ))
do
	m=2
	echo "Result of 2^$i :"$(($m ** $i))
done
