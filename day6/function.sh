#!/bin/bash

function my_func()
{
	value=$(($num1*$num2))
	echo $value
}

read -p "Enter Number num1 and num2 : " num1 num2
my_func $num1 $num2
multiple=$value
echo " Answer is : " $multiple
