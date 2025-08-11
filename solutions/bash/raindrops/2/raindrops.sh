#!/usr/bin/env bash

number=$1
string=""

if [[ $((number % 3)) -eq 0 ]]; then 
    string="${string}Pling"
fi
if [[ $((number % 5)) -eq 0 ]]; then 
    string="${string}Plang"
fi
if [[ $((number % 7)) -eq 0 ]]; then 
    string="${string}Plong"
fi
if [[ $string == "" ]]; then
    string="${string}${number}"
fi

echo "$string"
