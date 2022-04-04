#!/bin/bash

data=() #declare an array outside the scope of loop
idx=0   #initialize a counter to zero
for i in {53..99} #some random number range
do
    data[idx]=`printf "number=%s\n" $i` #store data in array
    idx=$((idx+1)) #increment the counter
done
echo ${data[*]} #your result
