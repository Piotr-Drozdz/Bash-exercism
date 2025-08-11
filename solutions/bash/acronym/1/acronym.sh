#!/usr/bin/env bash
string=$1
string=${string//"-"/" "}
#string=$(echo "$string" | sed 's/\([a-zA-Z\d]\)[^a-zA-Z\d\s]\([a-zA-Z\d]\)/\1 \2/g')
string=$(echo "$string" | sed 's/[^a-zA-Z\d[:space:]]//g')

output=${string:0:1}
for ((i = 0; i <${#string}; i++))
do 
	nast=$((i+1))
	if [[ "${string:i:1}" == " " ]]; then
		output=$output${string:nast:1}
	fi
done
output="${output// /}"
output="${output^^}"
echo "${output}"
