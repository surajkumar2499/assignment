#!/bin/bash 
data=()
start=0
#maxTimes=0
#minTimes=0
press_enter()
{
    echo -en "\nPress Enter to resuffle : "
    read
	echo ${data[*]}
	if [[ ${#data[*]} -eq "10" ]]
	then
		echo "Reached 10 Times"
		start=10
	fi

}

selection=
until [ "$selection" = "0" ]; do
    roll=$((RANDOM%6+1))
	echo $roll
	data+=($roll)
    press_enter $data
	if [[ $start -eq "10" ]]
	then
		
		break
	fi
done

