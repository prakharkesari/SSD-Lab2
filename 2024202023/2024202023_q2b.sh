#!/bin/bash

if [[ -z "${A}" || -z "${B}" ]]; then
  echo "Firstly set environment variable A and B"
  exit 1
fi

sum=$((A + B))

echo "The sum of $A and $B is: $sum"