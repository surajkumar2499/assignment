#!/bin/bash -x		 

echo "Please select any one to proceed"
echo "1. Write a program that reads 5 Random 3 Digit values and then outputs the minimum and the maximum value"
echo "2. Write a program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise."
echo "3. Write a program that takes a year as input and outputs the Year is a Leap Year or not a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless divisible by 400."
echo "4. Write a program to simulate a coin flip and print out 'Heads' or 'Tails' accordingly."


read -p "Enter Your selecction (1 - 4) : " userInput

case $userInput in
	"1")	a=$((RANDOM%1000+100))
		b=$((RANDOM%1000+100))
		c=$((RANDOM%1000+100))
		d=$((RANDOM%1000+100))
		e=$((RANDOM%1000+100))
		echo "Five Random no is : " $a $b $c $d $e
		array=($a $b $c $d $e)
			max=${array[0]}
			min=${array[0]}
		for i in "${array[@]}"
		do
		    if [[ "$i" -gt "$max" ]]; then
			max="$i"
		    fi
		    if [[ "$i" -lt "$min" ]]; then
			min="$i"
		    fi
		done
		echo "Max number is: $max"
		echo "Min number is: $min"	;;
	"2")	read -p " Enter Date : " day
		read -p " Enter Month : " Month

		if (( ($Month <= 6 && $day <= 20) && (($Month >= 3 && $day <= 20) && ($day<31)) ))
		then
			echo "True";
		else

			echo "False";
		fi;;
	"3")	read -p " Enter Year : " year
		a=`expr $year % 4`
		b=`expr $year % 100`
		c=`expr $year % 400`
		if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0 ]
		then 
			echo "Result : $year is leap year"
		else
			echo "Result : $year is not leap year"

		fi;;
	"4")	coin=$(($(($RANDOM%10))%2))
		echo "Your Coin is :" $coin
		if [ $coin -eq 1 ];then
		    echo "heads"
		else
		    echo "tails"
		fi				
	
esac


