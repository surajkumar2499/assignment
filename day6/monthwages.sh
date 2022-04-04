#!/bin/bash

ispartTime=1
isfullTime=2
totalSal=0
empRate=20
noOfworkingDay=20
randomCheck=$((RANDOM%3))
for (( i=1;i<=$noOfworkingDay;i++ ))
do
	case  $randomCheck in
		$isfullTime )
			empHrs=8;;
		$ispartTime )
			empHrs=4;;
		*)
			empHrs=0;;
	esac
	salary=$(($empHrs*$empRate))
done


	
