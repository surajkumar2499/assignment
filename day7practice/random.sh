#!/bin/bash 
for ((i=0;i<10;i++)); do
    numbers+=($(((RANDOM%900)+100)))
done

echo "${numbers[@]}"

largest=0
oldLargest=0
smallest=1000
oldSmallest=1000

for n in "${numbers[@]}"; do
    if [[ $n -gt $largest ]]; then
        oldLargest=$largest
        largest=$n
    elif [[ $n -gt $oldLargest && $n -lt $largest ]]; then
        oldlLargest=$n
    fi
    if [[ $n -lt $smallest ]]; then
        oldLargest=$smallest
        smallest=$n
    elif [[ $n -lt $oldLargest && $n -gt $smallest ]]; then
        oldSmallest=$n
    fi
done


printf 'Second largest is: %d\nSecond smallest is: %d\n' "$oldLargest" "$oldSmallest"
