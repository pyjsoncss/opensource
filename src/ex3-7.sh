#!/bin/bash

# 사용자로부터 폴더 이름 입력 받기
echo "폴더 이름을 입력하세요:"
read folder_name

# 폴더가 없으면 생성
if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
    echo "폴더가 생성되었습니다."
else
    echo "이미 해당 폴더가 존재합니다."
fi

# 폴더로 이동
cd "$folder_name" || exit

# 5개 이상의 파일 생성
for i in {1..5}; do
    echo "Content of file$i" > "file$i.txt"
done

# 파일 이름대로 하위 폴더들 생성하고 링크 거기
for file in *.txt; do
    folder_name="${file%.txt}"  # .txt 확장자 제거
    mkdir "$folder_name"
    ln -s "../$file" "$folder_name/$file"
done

# 생성된 폴더와 심볼릭 링크 확인
echo "폴더 및 심볼릭 링크 확인:"
ls -R
