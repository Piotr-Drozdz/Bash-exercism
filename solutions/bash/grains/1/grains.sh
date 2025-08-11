#!/usr/bin/env bash

pole=$1
if [[ "$pole" == "total" ]]; then
    echo "18446744073709551615"
    exit 0
    fi
if [[ "$pole" -lt 1 || "$pole" -gt 64 ]]; then
    echo "Error: invalid input"
    exit 1
    fi
ziarna=$(echo "2^($pole-1)" | bc)
sum=$(echo "-(1-2^$pole)" |bc)

echo "$ziarna"