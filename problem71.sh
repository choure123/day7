#!/bin/bash

arr=()

for i in {0..100}
do
  if [[ $(echo $i | grep -E '(.)\1') ]]
  then
    arr+=($i)
  fi
done
echo "${arr[@]}"

