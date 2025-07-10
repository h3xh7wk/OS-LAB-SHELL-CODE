#!/bin/bash

echo "Enter two numbers:"
read a
read b

echo "Choose operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read choice

case $choice in
    1) res=$((a + b))
       echo "Result: $res" ;;
    2) res=$((a - b))
       echo "Result: $res" ;;
    3) res=$((a * b))
       echo "Result: $res" ;;
    4) if [ $b -ne 0 ]; then
           res=$((a / b))
           echo "Result: $res"
       else
           echo "Division by zero not allowed"
       fi ;;
    *) echo "Invalid choice" ;;
esac
