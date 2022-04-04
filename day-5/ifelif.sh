#!/bin/bash

var1=20
var2=30
if [ $var2 -gt $var1 ]
then
	echo "$var2 is greater then $var1"
elif [ $var2 -eq $var1 ]
then 	
	echo "var are equal"
else
	echo "$var2 is less then $var1"
fi
