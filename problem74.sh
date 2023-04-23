#!/bin/bash

prime_factors() {
    factors=()
    i=2
    while [ $((i * i)) -le $1 ]
    do
        if [ $((n % i)) -eq 0 ]
        then
            factors+=($i)
            n=$((n / i))
        else
            i=$((i + 1))
        fi
    done
    if [ $n -gt 1 ]
    then
        factors+=($n)
    fi
    echo "${factors[@]}"
}

read -p "Enter a positive integer: " n

prime_factors_list=($(prime_factors $n))

sorted_factors=($(echo "${prime_factors_list[@]}" | tr ' ' '\n' | sort -n))

second_smallest=${sorted_factors[1]}
second_largest=${sorted_factors[${#sorted_factors[@]}-2]}

echo "Prime factors of $n are: ${prime_factors_list[@]}"
echo "Sorted prime factors of $n are: ${sorted_factors[@]}"
echo "2nd smallest factor: $second_smallest"
echo "2nd largest factor: $second_largest"
