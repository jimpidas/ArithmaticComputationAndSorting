#!/bin/bash -x
echo "Enter 3 Numbers : "
read a b c
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))

declare -A result
counter=0
result[$(($counter))]=$result1
result[$(($counter+1))]=$result2
result[$(($counter+2))]=$result3
result[$(($counter+3))]=$result4

for key in ${!result[@]}
do
        arr[$key]=${result[$key]}
done

for ((i=0; i < ${#arr[@]}; i++))
do
        for ((j=i+1; j < ${#arr[@]}; j++))
        do
                if [ ${arr[i]} -gt ${arr[j]} ]
                then
                        temp=${arr[i]}
                        arr[$i]=${arr[j]}
                        arr[$j]=$temp
                fi
        done
done
echo "The numbers in ascending orders are :" ${arr[@]}



