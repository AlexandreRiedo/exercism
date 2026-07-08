#!/usr/bin/env bash

if [[ $1 = "total" ]]; then
    echo "(2 ^ 64) - 1" | bc
    exit 0
fi

if [[ $1 -ge 1 && $1 -le 64 ]]; then
    echo "2 ^ ($1 - 1)" | bc
    exit 0
else
    echo "Error: invalid input" >&2
    exit 1
fi