#!/usr/bin/env bash

if [[ $# != 2 ]]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi
pierwszy="$1"
drugi="$2"
zmiana=0
if [[ ${#pierwszy} == ${#drugi} ]]; then
	for ((i = 0; i <${#pierwszy}; i++))
	do
		if [[ "${pierwszy:i:1}" != "${drugi:i:1}" ]]; then
			zmiana=$((zmiana+1))
		fi
	done
	echo "$zmiana"
else
	echo "strands must be of equal length"
	exit 1
fi
