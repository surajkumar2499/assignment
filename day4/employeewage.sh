#!/bin/bash

isPresent=1
randomcheck=$((RANDOM%2))

if [ $isPresent -eq $randomcheck ]
then 
	empRatePerhr=20
	empHrs=8
	salary=$(($empRatePerhr*$empHrs))
	echo $salary
else
	salary=0
fi
