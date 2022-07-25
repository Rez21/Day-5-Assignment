#!/bin/bash
echo "Enter an option between 1 and 4"
echo "1.Feet to Inch"
echo "2.Feet to Meter"
echo "3.Inch to Feet"
echo "4.Meter to Feet"

read option

case $option in
	1 )
		read -p "Enter number to convert: " num
		inInches=$(($num*12))
		echo "$num feet = $inInches Inch."
	;;
	2 )
		read -p "Enter number to convert: " b
		toMeter=$(echo $b | awk '{ printf "%0.4f", $1*3048}')
		echo "$b feet = $toMeter m"
	;;
	3)
		read -p "Enter number to convert: " c
		feet=$(echo $c | awk '{printf "%.4f ", $1 / 12 }')
		echo "$c inch = $feet ft"
	;;
	4)
		read -p "Enter number to convert: " d
		inFeet=$(echo $d | awk '{ printf "%0.4f", $1*3.28084}')
		echo "$d meter = $inFeet ft"
	;;
	*)
		echo "Invalid input"
	;;
esac
