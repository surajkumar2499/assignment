#!/bin/bash -x

ispartTime=1
isfullTime=2
empRate=20
noOfworkingDay=20
maxRateInmonth=100
totalEmphrs=0
totalworkingDays=0

while [[ $totalEmphrs -lt $maxRateInmonth && $totalworkingDays -lt $noOfworkingDay ]]
do 
		((totalworkingDays++))
		randomCheck=$((RANDOM%3))
			case  $randomCheck in
				$isfullTime )
					empHrs=8;;
				$ispartTime )
					empHrs=4;;
				*)
					empHrs=0;;
			esac
			totalEmphrs=$(($totalEmphrs+$empHrs))
done
totalSalary=$(($totalEmphrs*$empRate))			
			
