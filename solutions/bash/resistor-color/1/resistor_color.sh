#!/usr/bin/env bash

resistors=("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white")

if [[ $1 == "colors" ]]; then
    for i in ${resistors[@]}; do
        echo "$i"
    done
    exit 0
fi

for i in ${!resistors[@]}; do
    if [[ $2 == "${resistors[$i]}" ]]; then
        echo "$i"
        exit 0
    fi
done