#!/bin/bash -x

for ((i=0;i<10;i++)); do
    numbers+=($(((RANDOM%899)+100)))
done
echo ${numbers[@]}
secondLargest=$(printf '%s\n' "${numbers[@]}" | sort -n | tail -2 | head -1)
secondSmallest=$(printf '%s\n' "${numbers[@]}" | sort -n | head -2 | tail -1)

printf 'Second largest is: %d\nSecond smallest is: %d\n' "$secondLargest" "$secondSmallest"
