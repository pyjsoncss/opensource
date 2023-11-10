#!/bin/bash

# 숫자와 연산자 입력 받기
echo "첫 번째 숫자를 입력하세요:"
read num1

echo "두 번째 숫자를 입력하세요:"
read num2

echo "연산자를 입력하세요 (+ 또는 -):"
read operator

# 입력이 숫자가 맞는지 확인
if ! [[ "$num1" =~ ^[0-9]+$ ]] || ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "숫자를 입력하세요."
    exit 1
fi

# 입력된 연산자에 따라 계산
if [ "$operator" = "+" ]; then
    result=$((num1 + num2))
    echo "결과: $num1 + $num2 = $result"
elif [ "$operator" = "-" ]; then
    result=$((num1 - num2))
    echo "결과: $num1 - $num2 = $result"
else
    echo "잘못된 연산자입니다. + 또는 - 중 하나를 입력하세요."
    exit 1
fi

