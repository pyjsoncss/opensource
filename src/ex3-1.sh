#!/bin/bash


echo "반복할 횟수를 입력하세요:"
read count

if ! [[ "$count" =~ ^[0-9]+$ ]]; then
    echo "숫자를 입력하세요."
    exit 1
fi


for ((i = 1; i <= count; i++)); do
    echo "Hello, World! "
done
