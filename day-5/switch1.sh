#!/bin/bash

isPartTime=1
isFullTime=2
empPerHr=20
randomCheck=$((RANDOM%3))

case $randomCheck in
	$isFullTime )
			empHr=8;;
	$isPartTime )
			empHr=4;;
	*)
		empHr=0;;
esac
salary=$(($empHr*$empPerHr))
echo "$empHr Hours Salary is : "$salary
