#!/bin/bash

# 내부 함수 정의
run_command() {
    local command=$1  # 첫 번째 인자로 받은 명령어 저장
    shift             # 첫 번째 인자를 삭제하여 나머지 인자를 저장

    echo "실행 중: $command $@"
    $command "$@"  # 리눅스 명령어 실행
}

# 사용자로부터 명령어와 옵션 입력 받기
echo "리눅스 명령어를 입력하세요 (예: ls):"
read user_command

# 입력이 빈 문자열이 아닌지 확인
if [ -z "$user_command" ]; then
    echo "명령어를 입력하세요."
    exit 1
fi

# 사용자로부터 명령어 옵션 입력 받기
echo "명령어 옵션을 입력하세요 (띄어쓰기로 구분):"
read user_options

# 내부 함수 호출
run_command "$user_command" $user_options
