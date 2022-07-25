#!/bin/bash -x
read -p "enter first number:" x
read -p "enter second number:" y
read -p "enter third number:" z

a=$(( x + y * z ))
b=$(( z + x / y ))
c=$(( x % y + z ))
d=$(( x * y + z ))
echo "Results: $a  $b  $c   $d"

minimum=$a
maximum=$d

if (( a > maximum ))
then    
    maximum=$a
fi

if (( b > maximum ))
then
    maximum=$b
fi
if (( b < minimum ))
then
    minimum=$b
fi

if (( c > maximum ))
then
    maximum=$c
fi
if (( c < minimum ))
then
    minimum=$c
fi

if (( d > maximum ))
then
    maximum=$d
fi

echo "Minimum: $minimum"
echo "Maximum: $maximum"
