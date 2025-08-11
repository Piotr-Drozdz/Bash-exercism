#!/usr/bin/env bash

liczba="$1"
potega="${#liczba}"
output=0

for ((i = 0; i < potega; i++))
do 
    cyf="${liczba:i:1}"
    output="$((output + cyf**potega))"
done
if [[ "${output}" == "${liczba}" ]]; then
    echo "true"
else
    echo "false"
fi
