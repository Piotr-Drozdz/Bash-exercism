#!/usr/bin/env bash

 if [[ $# != 1 || ! "$1" =~ ^-?[0-9]+$ ]]; then
          echo "Usage: leap.sh <year>"
          exit 1
fi
number=$1

if [[ $((number % 100)) -eq 0 ]]; then 
    if [[ $((number % 400)) -eq 0 ]]; then 
        echo true
        exit 0
    else
        echo false
        exit 0
    fi
fi

if [[ $((number % 4)) -eq 0 ]]; then 
    echo true
    exit 0
else
    echo false
    exit 0
fi
