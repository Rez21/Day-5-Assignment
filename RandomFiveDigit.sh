#!/bin/bash -x

n1=$((RANDOM%90+10))
n2=$((RANDOM%90+10))
n3=$((RANDOM%90+10))
n4=$((RANDOM%90+10))
n5=$((RANDOM%90+10))

echo "The random two digit values are $n1 $n2 $3 $4 $5"

sum=$(( n1 + n2 + n3 + n4 + n5 ))
average=$( echo $sum 5 | awk '{printf "%.2f", $1 / $2}')
echo "Sum of numbers: $sum"
echo "Average: $average"
