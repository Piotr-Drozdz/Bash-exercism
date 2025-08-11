#!/usr/bin/env bash

resistors=("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white")

if [[ $1 == "colors" ]]; then
    for i in ${resistors[@]}; do
        echo "$i"
    done
    exit 0
fi

output=""
if [[ $1 != "black" ]]; then
    for i in ${!resistors[@]}; do
        if [[ $1 == "${resistors[$i]}" ]]; then
           output="${output}${i}"
        fi
    done

    if [[ "${output}" == "" ]]; then
        echo "invalid color"
        exit 1
    fi
fi

rr=""
for i in ${!resistors[@]}; do
    if [[ $2 == "${resistors[$i]}" ]]; then
       output="${output}${i}"
       rr="${rr}dd"
    fi
done
if [[ "${rr}" == "" ]]; then
    echo "invalid color"
    exit 1
fi

echo "${output}"