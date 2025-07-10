#!/bin/bash

echo "Enter a string or number:"
read input

rev=$(echo "$input" | rev)

if [ "$input" = "$rev" ]; then
    echo "$input is a palindrome"
else
    echo "$input is not a palindrome"
fi
