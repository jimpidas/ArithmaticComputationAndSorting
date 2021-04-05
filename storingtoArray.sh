#!/bin/bash -x
echo "Enter 3 Numbers : "
read a b c
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))

declare -A result
result[uc2]=$result1
result[uc3]=$result2
result[uc4]=$result3
result[uc4]=$result4
for key in ${!result[@]}
do
	arr[$key]=${result[$key]}
done
