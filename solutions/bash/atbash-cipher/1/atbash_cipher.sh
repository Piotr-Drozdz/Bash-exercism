#!/usr/bin/env bash

flag=$1
string=$2
string=${string//[[:space:]]/}
string=${string^^}
duze="$(echo {A..Z})"
male="$(echo {a..z})"

#echo "${string}"
new_string=""

if [[ "${flag}" == "encode" ]]; then
	rr=0
	for ((i=0; i<"${#string}"; i++)) do
		#echo "${string:$i:1}"
		for ((j=0; j<"${#duze}"; j++)) do
			if [[ "${string:$i:1}" == "${duze:$j:1}" ]]; then
				rr=$((rr +1))
				dlug=${#male}
				liczba=$((dlug-1-j))
				new_string="${new_string}${male:$liczba:1}"
				if [[ $((rr % 5)) -eq 0 ]]; then 
					new_string="${new_string} "
				fi
			fi	
		done
		if [[ "${string:$i:1}" =~ ^[0-9]$ ]]; then
			rr=$((rr +1))
			new_string="${new_string}${string:$i:1}"
			if [[ $((rr % 5)) -eq 0 ]]; then 
				new_string="${new_string} "
			fi
		fi

	done
elif [[ "${flag}" == "decode" ]]; then
	for ((i=0; i<"${#string}"; i++)) do
		#echo "${string:$i:1}"
		for ((j=0; j<"${#duze}"; j++)) do
			if [[ "${string:$i:1}" == "${duze:$j:1}" ]]; then
				dlug=${#male}
				liczba=$((dlug-1-j))
				new_string="${new_string}${male:$liczba:1}"
			fi	
		done
		if [[ "${string:$i:1}" =~ ^[0-9]$ ]]; then
			new_string="${new_string}${string:$i:1}"
		fi
	done
fi
if [[ "$new_string" =~ ^[[:space:]] || "$new_string" =~ [[:space:]]$ ]]; then
    new_string="${new_string#"${new_string%%[![:space:]]*}"}"
    new_string="${new_string%"${new_string##*[![:space:]]}"}"
fi
echo "${new_string}"


