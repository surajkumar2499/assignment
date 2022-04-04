#!/bin/bash

read -p "Enter firt,Second and Thired Integer : " first second thired

arr[0]=$(($first))
arr[1]=$(($second))
arr[2]=$(($thired))
if [[ $((first+second+thired)) -eq 0 ]]
then
	echo "Sum is zero"
else
	echo "Sum is not zero"
fi
