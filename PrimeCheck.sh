#!/bin/bash

echo "Enter a number:"
read num

if [ $num -le 1 ]; then
    echo "$num is not a prime number"
    exit
fi

for (( i=2; i<=num/2; i++ )); do
    if [ $((num % i)) -eq 0 ]; then
        echo "$num is not a prime number"
        exit
    fi
done

echo "$num is a prime number"
