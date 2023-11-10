#!/bin/bash

# 사용자로부터 검색할 팀원의 이름 입력 받기
echo "검색할 팀원의 이름을 입력하세요:"
read search_name

# DB.txt 파일에서 이름으로 검색하여 정보 출력
grep "$search_name" DB.txt

# 검색 결과가 없는 경우 메시지 출력
if [ $? -ne 0 ]; then
    echo "검색 결과가 없습니다."
fi
