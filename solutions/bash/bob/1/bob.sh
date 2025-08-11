#!/usr/bin/env bash


if [ "$#" == 0 ] || [ -z "$1" ] || [[ "$1" =~ ^[[:space:]]*$ ]]; then
	echo "Fine. Be that way!"
    exit 0
fi

string="$1"
if [[ "$string" =~ ^[^a-z]*[A-Z][^a-z]*\?$ ]]; then
    echo "Calm down, I know what I'm doing!"
    exit 0
fi
if [[ "$string" =~ ^[^a-z]*[A-Z][^a-z]*$ ]]; then
    echo "Whoa, chill out!"
    exit 0
fi
if [[ "$string" =~ \?[[:space:]]*$ ]]; then
    echo "Sure."
    exit 0
else
    echo "Whatever."
    exit 0
fi