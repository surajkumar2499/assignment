#!/bin/bash -x		 

echo "Please select any one to proceed"
echo "1. Read a single digit number and write the number in word"
echo "2. Read a Number and Display the week day (Sunday, Monday,...)"
echo "3. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,..."


read -p "Enter Your selecction (1 - 3) : " userInput

case $userInput in
	"1")	read -p "Enter a number between 1 and 5 : " ch
			if [ $ch = "1" ]; then
			    echo "One"
			elif [ $ch = "2" ]; then
			    echo "Two"
			elif [ $ch = "3" ]; then
			    echo "Three"
			elif [ $ch = "4" ]; then
			    echo "Four"
			elif [ $ch = "5" ]; then
			    echo "Five"        
			else
			    echo "Please enter a number between 1 and 5."
			fi;;	
	"2")	read -p "Enter a number between 1 and 7  : " ch
			if [ $ch = "1" ]; then
			    echo "Sunday"
			elif [ $ch = "2" ]; then
			    echo "Monday"
			elif [ $ch = "3" ]; then
			    echo "Tuesday"
			elif [ $ch = "4" ]; then
			    echo "Wednesday"
			elif [ $ch = "5" ]; then
			    echo "Thursday"
			elif [ $ch = "6" ]; then
			    echo "Friday" 
			elif [ $ch = "7" ]; then
			    echo "Saturday"               
			else
			    echo "Please enter a number between 1 and 7."
			fi;;	
	"3")	read -p "Enter a number  1, 10, 100, 1000  : " ch
			if [ $ch = "1" ]; then
			    echo "Once"
			elif [ $ch = "10" ]; then
			    echo "Ten"
			elif [ $ch = "100" ]; then
			    echo "Hundred"
			elif [ $ch = "1000" ]; then
			    echo "Thousand"     
			else
			    echo "Enter a number  1, 10, 100, 1000."
			fi;;	
	*)	echo "Enter Correct Range "	;;		
	
esac


