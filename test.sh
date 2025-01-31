#!/bin/bash

while IFS= read -r line; do
    echo -ne "$line"
    echo -e "$line" | ./sulution
done < "$1"
