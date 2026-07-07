#!/usr/bin/env bash

squared_sum=0
for (( i=0; i<"${#1}"; ++i )); do
    squared_sum="$(( (${1:$i:1} ** ${#1}) + squared_sum ))"
done

if [[ $squared_sum -eq $1 ]]; then
    echo "true"
else
    echo "false"
fi