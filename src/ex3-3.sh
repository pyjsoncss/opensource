#!/bin/bash

# 몸무게와 신장 입력 받기
echo "몸무게를 kg 단위로 입력하세요:"
read weight

echo "신장을 미터 단위로 입력하세요:"
read height

# 입력이 숫자가 맞는지 확인
if ! [[ "$weight" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$height" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "숫자를 올바르게 입력하세요."
    exit 1
fi

# BMI 계산
bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

# 정상체중 여부 판단
if (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) )); then
    echo "체질량지수(BMI)는 $bmi로, 정상체중입니다."
else
    echo "체질량지수(BMI)는 $bmi로, 정상체중이 아닙니다."
fi
