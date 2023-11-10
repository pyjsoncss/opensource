#!/bin/bash

while true; do
    # 사용자로부터 팀원 정보 입력 받기
    echo "팀원의 이름을 입력하세요:"
    read name

    # 빈 문자열이면 입력 종료
    if [ -z "$name" ]; then
        echo "입력을 종료합니다."
        break
    fi

    echo "팀원의 생일 또는 전화번호를 입력하세요:"
    read info

    # 정보가 빈 문자열이면 기본값으로 "정보 없음"을 할당
    if [ -z "$info" ]; then
        info="정보 없음"
    fi

    # 입력 받은 정보를 DB.txt 파일에 추가
    echo "$name: $info" >> DB.txt

    echo "팀원 정보가 추가되었습니다."

    # 계속해서 정보를 입력할 것인지 물어봄
    echo "더 입력하시겠습니까? (yes/no)"
    read answer

    case "$answer" in
        [Nn]*)
            echo "입력을 종료합니다."
            break
            ;;
    esac
done
