#!/bin/bash -x

d1=$((RANDOM%6+1))
d2=$((RANDOM%6+1))
echo "Dice 1 number is: $d1"
echo "Dice 2 number is: $d2"
echo "Sum: $((d1+d2))"
