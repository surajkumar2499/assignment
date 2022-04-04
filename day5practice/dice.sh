#!/bin/bash +x		 

echo "Please select any one to proceed"
echo "1. Use Random Function (( RANDOM )) to get Single Digit"
echo "2. Use Random to get Dice Number between 1 to 6"
echo "3. Add two Random Dice Number and Print the Result"
echo "4. Write a program that reads 5 Random 2 Digit values,then  find their sum and the average"
echo "5. Unit Conversion"

read -p "Enter Your selecction (1 - 5) : " userInput

case $userInput in
	"1")	echo "Answer is : "$((RANDOM%10));;
	"2")	echo "Answer is : "$((RANDOM%6+1));;
	"3")	x=$((RANDOM%6+1))
		y=$((RANDOM%6+1))
		echo "First Dice Number : " $x
		echo "Second Dice Number : " $y
		echo "Sum of random number is : " $((x+y));;
	"4")	a=$((RANDOM%100+10))
		b=$((RANDOM%100+10))
		c=$((RANDOM%100+10))
		d=$((RANDOM%100+10))
		e=$((RANDOM%100+10))
		echo "All 5 Random 2 digit value is : " $a $b $c $d $e
		echo "sum is : " $((a+b+c+d+e))
		echo "Average is : " $(((a+b+c+d+e)/5));;
	"5")	echo "a. 1ft = 12 in then 42 in = ? ft : "
		echo "b. Rectangular Plot of 60 feet x 40 feet in meters : "
		echo "c. Calculate area of 25 such plots in acres : "
		read -p "Select (a-c) : " useralpInput
			case $useralpInput in 
				"a") 	x=$((42/12))
					echo "Answer is : "$x;;
				"b") 	x=$((60*40))
					y=3
					echo "60 feet x 40 feet : "$x
					b=$(($x/$y))
					echo "IN Meters : "$b;;
				"c")	side=25	
					echo "Area of 25 is :" $((side*side))
					echo "In Acre : " $((side/4047 | bc))
			esac	
esac


