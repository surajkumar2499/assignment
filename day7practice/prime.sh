#!/bin/bash -x

echo enter First and last number
read first last
for a in $(seq $first $last)
do
    k=0
    for i in $(seq 2 $(expr $a - 1))
    do 
        if [ $(expr $a % $i) -eq 0 ]
        then
            k=1
            break
        fi
    done
    if [ $k -eq 0 ]
    then
    echo "${a[@]}"
    fi
done
