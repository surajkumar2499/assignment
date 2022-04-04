#!/bin/bash  

read -p "Enter Number for power : " userInput

setPower=2
start=1
end=256

while (( i <= userInput ))
do
	chk=$((i++))
	if (( $chk == $end ))
	then
	echo "Limit end"
	else
	ans=$(($setPower ** $userInput))	
	fi
done
echo   "Power of 2^$userInput is : "$ans
