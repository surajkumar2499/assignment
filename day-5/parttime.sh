#!/bin/bash

isPart=1
isFull=2
empRateprhr=20

if [ $isFull -eq $((RANDOM%3)) ]
then
	echo "Fulltime Emp Hours is 8"
	empHrs=8
elif [ $isPart -eq $((RANDOM%3)) ]
then 
	echo "Part time emp Hours is 4"
	empHrs=4
else
	echo "Absent"
	empHrs=0
fi

salary=$(($empHrs * $empRateprhr))
echo "Salary is : "$salary
