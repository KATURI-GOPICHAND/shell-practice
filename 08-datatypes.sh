#!/bin/bash

NUM1=100
NUM2=Gopi
NUM3=200

SUM1=$(($NUM1+$NUM2))
echo "sum of $NUM1 and $NUM2 is: $SUM1"


SUM2=$(($NUM1+$NUM3))
echo "sum of $NUM1 and $NUM3 is: $SUM2"

# Array 
FRUITS=("Apple" "Banana" "mango" "Kiwi")

echo "Fruits are: ${FRUITS[@]}"
echo "First Fruit is: ${FRUITS[0]}"
echo "Second Fruit is: ${FRUITS[1]}"
echo "Third Fruit is: ${FRUITS[2]}"
echo "Third Fruit is: ${FRUITS[3]}"
