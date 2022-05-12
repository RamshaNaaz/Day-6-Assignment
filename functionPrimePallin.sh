#!/bin/bash -x
function getPrime()
{
s=0
for (( i=2 ; i<=$num/2 ; i++ ))
do
   s=$(( num%i ))

done

if [ $s -eq 0 ]
then
   echo "Number is a prime"
   check= 1
   #return(check)
else
    echo "Number is not a prime"

fi
}

function getPallin()
{
rev=""
temp=$num

	while [ $num -gt 0 ]
	do
   	s=$(( $num % 10 ))

  	num=$(( $num / 10 ))

   	rev=$( echo ${rev}${s} )
	done

if [ $temp -eq $rev ]
then
echo "Number is a pallindrome"
  
	getPrime $num
        	  if [ $check -eq 1 ]
          	      then
          	      echo "Number is a prime no also"
                  fi
else
echo "Not a pallindrome"

fi
}

echo "Enter the number for checking"
read num

check=0

#getPrime($n)
getPallin $num

  #if(( $check -eq 2 ))
  #then 
  #echo "Number ia a prime and pallindrome number"

fi
