#!/bin/bash

if [ -z "$1" ]; then
  echo "Please give an integer in command line arguement"
  exit 1
fi

n=$1

if ! [[ "$n" =~ ^[1-9]+$ ]]; then
  echo "Please enter non negative number"
  exit 1
fi

a=0
b=1

for (( i=0; i<n; i++ ))
do
  echo -n "$a "
  next=$((a + b))
  a=$b
  b=$next
done

echo