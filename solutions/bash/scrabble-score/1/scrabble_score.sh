#!/usr/bin/env bash

string=$1
suma=0
for ((i = 0; i <"${#string}"; i++)); do
    if [[ "${string:$i:1}" =~ ^[AEIOULNRSTaeioulnrst]$ ]]; then
        suma=$((suma + 1))
    fi
    if [[ "${string:$i:1}" =~ ^[DGdg]$ ]]; then
        suma=$((suma + 2))
    fi
    if [[ "${string:$i:1}" =~ ^[BCMPbcmp]$ ]]; then
        suma=$((suma + 3))
    fi
    if [[ "${string:$i:1}" =~ ^[FHVWYfhvwy]$ ]]; then
        suma=$((suma + 4))
    fi
    if [[ "${string:$i:1}" =~ ^[Kk]$ ]]; then
        suma=$((suma + 5))
    fi
    if [[ "${string:$i:1}" =~ ^[JXjx]$ ]]; then
        suma=$((suma + 8))
    fi
    if [[ "${string:$i:1}" =~ ^[QZqz]$ ]]; then
        suma=$((suma + 10))
    fi
done
echo "${suma}"