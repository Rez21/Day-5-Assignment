#!/bin/bash -x

#a - 1 feet =12 inches then 42 inches = feet?
inch=42
feet=$(echo $inch | awk '{ printf "%0.4f",$1/12}')
echo "42 inches = $feet feets"

#b- Rectangular plot of 60 feet x 40 feet in meters

a=60
b=40
areaInFeet=$((a*b))
areaInMeter=$( echo $areaInFeet | awk '{printf "%.04f", $1*0.0929}')
echo "Area of rectangle in meters = $areaInMeter m"

#c- area of 25 plots in acres
#1acre=43560
numOfPlots=25
areaInAcre=$(echo $areaInFeet $numOfPlots | awk '{ printf "%0.4f", $1*$2/43560}')
echo "Area of $numOfPlots plots is= $areaInAcre acres"
