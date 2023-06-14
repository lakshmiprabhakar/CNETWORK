#!/bin/bash

echo "Enter a number:"
read number

echo "Multiplication table for $number:"
for ((i = 1; i <= 10; i++)); do
    result=$((number * i))
    echo "$number x $i = $result"
done
////output////
mca@cscc2d78:~$ bash multiple.sh
Enter a number:
5
Multiplication table for 5:
5 x 1 = 5
5 x 2 = 10
5 x 3 = 15
5 x 4 = 20
5 x 5 = 25
5 x 6 = 30
5 x 7 = 35
5 x 8 = 40
5 x 9 = 45
5 x 10 = 50
