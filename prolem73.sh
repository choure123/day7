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

echo "Prime factors of $n are: ${prime_factors_list[@]}"
