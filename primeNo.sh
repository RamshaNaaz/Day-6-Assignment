#!/bin/bash -x
echo "Enter the number"
read num
s=0
for (( i=2 ; i<=$num/2 ; i++ ))
do
   s=$(( num%i ))

done

if [ $s -eq 0 ]
then
   echo "Number is a prime"

else
    echo "Number is not a prime"

fi

