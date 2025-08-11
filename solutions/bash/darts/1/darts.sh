#!/usr/bin/env bash

if [[ $# != 2 ]]; then
	echo "invalid number of args"
	exit 1
fi

is_number() {
    [[ "$1" =~ ^-?[0-9]*\.?[0-9]+$ ]]
}

if ! is_number "$1" || ! is_number "$2"; then
    echo "Error: arguments should be real numbers"
    exit 1
fi


px=$1
py=$2

promien=$(echo "scale=4; sqrt(($px)^2 + ($py)^2)" | bc -l)

if (( $(echo "$promien <= 1" | bc -l) )); then
	punkty=10
fi
if (( $(echo "$promien > 1" | bc -l) )); then
	punkty=5
fi
if (( $(echo "$promien > 5" | bc -l) )); then
	punkty=1
fi
if (( $(echo "$promien > 10" | bc -l) )); then
	punkty=0
fi

echo "$punkty"
