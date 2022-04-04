#!/bin/bash -x
echo "Please select any one to proceed"
echo "1. Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n."
echo "2. Write a program that takes a input and determines if the number is a prime."
echo "3. Extend the program to take a range of number as input and output the Prime Numbers in that range."
echo "4. Write a program that computes a factorial of a number taken as input. 5 Factorial – 5! = 1 * 2 * 3 * 4 * 5"

read -p "Enter Your selecction (1 - 4) : " userInput

case $userInput in
        "1")  read -p "Enter n number for 2^n : " userInputa 
		for (( i=1;i<=userInputa;i++ ))
		do
			m=2
			echo "Result of 2^$i :"$(($m ** $i))
		done;;
	"2") read -p "Enter Number to check prime or not : " userInputb

		for (( i=2;i<=userInputb/2;i++))
		do
			if [ $((userInputb%i)) -eq 0 ]
			then
				echo "Number $userInputb is not prime"
			exit
			fi
		done
		echo "$userInputb is prime Number";;
	"3") read -p "Enter Input start from : " userInputc
	     read -p "Enter Output range : " userOutput
		
		for (( i=$userInputc;i<=$userOutput;i++ ))
			do
			for (( j=2;j<=$i/2;j++))
			do
				if [ $(($i%$j)) -eq 0 ]
				then
				echo "Number $i is not prime"
				exit
				fi
			done
			echo "$i is prime Number"
		done;;
	"4") read -p "Enter No for factorial : " userInputd
		factorialSet=1
		for (( i=2;i<=userInputd;i++ ))
		do
			factorialSet=$((factorialSet*i))

		done
		echo "Factorial of $userInputd is : "$factorialSet;;
	*) echo "Invalid Number";;
esac
