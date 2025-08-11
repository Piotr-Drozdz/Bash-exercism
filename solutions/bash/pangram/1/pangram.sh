#!/usr/bin/env bash

string="$1"
string="${string^^}"
output="true"
for i in {A..Z}; do
	if [[ "$string" != *"$i"* ]]; then
		output="false"
	fi
done

echo "$output"
