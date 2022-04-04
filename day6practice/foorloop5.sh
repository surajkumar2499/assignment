#!/bin/bash -x

read -p "Enter No for factorial : " userInput
factorialSet=1
for (( i=2;i<=userInput;i++ ))
do
	factorialSet=$((factorialSet*i))

done
echo "Factorial of $userInput is : "$factorialSet
