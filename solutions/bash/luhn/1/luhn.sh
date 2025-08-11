#!/usr/bin/env bash

string=$1
if [[ $string =~ [^0-9\ ] || ${#string} -lt 2 || $string =~ ^([[:space:]]*[0-9][[:space:]]*|[0-9][[:space:]]*)$ ]]; then
    echo false
    exit 0
fi
string=${string//[[:space:]]/}
number=0
nm=0
for ((i=${#string}-1; i>=0; i--)); do
    lic=${string:$i:1}
    if [[ $((nm % 2)) != 0 ]]; then
        lic=$((2*lic))
        if [[ $lic -gt 9 ]]; then
            lic=$((lic-9))
        fi
    fi
	nm=$((nm+1))
    number=$((number+lic))
done

if [[ $((number % 10)) == 0 ]]; then
    echo true
else
    echo false
fi
