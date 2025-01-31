#!/bin/bash

while IFS= read -r line; do
    echo -ne "$line"
    echo -e "$line" | ./solution
done < $(grep -v -E '^#' "$1")
