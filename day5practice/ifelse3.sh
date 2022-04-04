#!/bin/bash -x		 

echo "Please select any one to proceed"
echo "1. Read a single digit number and write the number in word"
echo "2. Read a Number and Display the week day (Sunday, Monday,...)"
echo "3. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,..."


read -p "Enter Your selecction (1 - 3) : " userInput

case $userInput in
	"1")	read -p "Enter a number between 1 and 5 : " ch
			case $ch in
			    1 ) echo "One.";;
			    2 ) echo "Two.";;
			    3 ) echo "Three.";;
			    4 ) echo "Four.";;
			    5 ) echo "Five.";;
			    * ) echo "please enter a number between 1 and 5.";;
			esac;;	
	"2")	read -p  "Enter a number between 1 and 7 : " ch

			case $ch in
			1) echo "Sunday" ;;
			2) echo "Monday" ;;
			3) echo "Tuesday" ;;
			4) echo "Wednesday" ;;
			5) echo "Thursday" ;;
			6) echo "Friday" ;;
			7) echo "Saturday" ;;
			*) echo "enter value between 1 to 7" ;;
			esac;;	
	"3")	read -p "Enter a number  1, 10, 100, 1000  : " ch
			case $ch in
			1) echo "One" ;;
			10) echo "Ten" ;;
			100) echo "Hundred" ;;
			1000) echo "Thousand" ;;
			*) echo "Enter a number  1, 10, 100, 1000 ";;
		     esac;;	
	*)	echo "Enter Correct Range ";;		
	
esac


