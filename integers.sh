#!/bin/bash

echo "Enter the array of integers separated by space:"
read -a arr

n=${#arr[@]}

found=false

for ((i=0; i<$n-2; i++))
do
    for ((j=$i+1; j<$n-1; j++))
    do
        for ((k=$j+1; k<$n; k++))
        do
       
           if [ $((arr[$i] + arr[$j] + arr[$k])) -eq 0 ]
            then
                echo "Triplet found: ${arr[$i]}, ${arr[$j]}, ${arr[$k]}"
                found=true
            fi
        done
    done
done

if [ $found == false ]
then
    echo "No triplet found"
fi
