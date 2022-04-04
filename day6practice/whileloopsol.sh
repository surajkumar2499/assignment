#!/bin/bash -x

echo "Please select any one to proceed"
echo "1. Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n till 256 is reached.."
echo "2. Extend the Flip Coin problem till either Heads or Tails wins 11 times."


read -p "Enter Your selecction (1 - 2) : " userInput

case $userInput in
        "1")  read -p "Enter Number for power : " userInput

		setPower=2
		start=1
		end=256

		while (( i <= userInput ))
		do
			chk=$((i++))
			if (( $chk == $end ))
			then
			echo "Limit end"
			else
			ans=$(($setPower ** $userInput))	
			fi
		done
		echo   "Power of 2^$userInput is : "$ans;;
	"2") 	i=0
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
		done;;
	*) echo "Invalid Number";;
esac
