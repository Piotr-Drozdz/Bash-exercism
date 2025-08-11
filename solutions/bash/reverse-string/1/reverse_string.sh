#!/usr/bin/env bash

string=$1
new_string=""

for (( i=${#string}-1; i>=0; i-- )); do
    new_string="${new_string}${string:$i:1}"
done

echo "${new_string}"