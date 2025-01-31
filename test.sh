#!/bin/bash

while read -r INPUT ANSWER; do
#    echo -e "${INPUT} ${ANSWER}"
    TEST=$(echo -e "${INPUT}" | ./solution)
#    echo -e $TEST
    diff --unified=1 <( printf '%s\n' "$TEST" ) <( printf '%s\n' "$ANSWER" )
done < "$1"
