#!/usr/bin/env bash
liczba=$1


binarnie=$(echo "obase=2; $liczba" | bc)

ostatnie_5=$(printf "%05d" $(echo "$binarnie" | rev | cut -c1-5 | rev))


lista=()
odwrocona=()
for (( i=${#ostatnie_5}-1; i>=0; i--  )); do
  cyfra="${ostatnie_5:$i:1}"
  if [[ "$cyfra" -eq 1 ]]; then
    if [[ "$i" -eq 4 ]]; then
      lista+=("wink")
    fi
    if [[ "$i" -eq 3 ]]; then
      lista+=("double blink")
    fi
    if [[ "$i" -eq 2 ]]; then
      lista+=("close your eyes")
    fi
    if [[ "$i" -eq 1 ]]; then
      lista+=("jump")
    fi
    if [[ "$i" -eq 0 ]]; then
      for (( i=${#lista[@]}-1; i>=0; i-- )); do
        odwrocona+=("${lista[$i]}")
      done
    fi

  fi
done

output=""
if [[ ${#odwrocona[@]} -eq 0 ]]; then
  output=$(IFS=', '; echo "${lista[*]}")
else
  output=$(IFS=', '; echo "${odwrocona[*]}")
fi
echo "$output"