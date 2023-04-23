#!/bin/bash  -x

magic_number=$(( (RANDOM % 100) + 1 ))

echo "Think of a number between 1 and 100."

while true; do
    read -p "Is the number less than $((magic_number/2)) (y/n)? " answer
    if [[ $answer == "y" ]]; then
        magic_number=$(( (RANDOM % ((magic_number/2)-1)) + 1 ))
    elif [[ $answer == "n" ]]; then
        magic_number=$(( (RANDOM % (100-magic_number)) + magic_number + 1 ))
    else
        echo "Invalid input. Please enter y or n."
        continue
    fi

    read -p "Is the number $magic_number (y/n)? " answer
    if [[ $answer == "y" ]]; then
        echo "Magic number found!"
        break
    elif [[ $answer != "n" ]]; then
        echo "Invalid input. Please enter y or n."
    fi
done
