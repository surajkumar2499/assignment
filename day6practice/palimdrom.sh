#!/bin/bash -x


read -p  "Enter the number : " userInput
function palim
	{
		number=$userInput
		reverse=0
			while [ $userInput -gt 0 ]
			do
				a=`expr $userInput % 10 `
				userInput=`expr $userInput / 10 `
				reverse=`expr $reverse \* 10 + $a`
			done
			echo $reverse
				if [ $number -eq $reverse ]
				then
    					echo "Number is palindrome"
				else
    					echo "Number is not palindrome"	
				fi
	}
	result=`palim $userInput`
	echo "$result"
