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

# 5개의 txt 파일 생성
for i in {1..5}; do
    echo "Hello, File $i!" > "file$i.txt"
done

# 현재 폴더 내용 확인
echo "폴더 내용 확인:"
ls

# 압축
zip -r "$folder_name.zip" *

# 새로운 폴더 생성하여 압축 해제
mkdir "extracted_folder"
unzip "$folder_name.zip" -d "extracted_folder"

# 압축 해제된 폴더 내용 확인
echo "압축 해제된 폴더 내용 확인:"
ls "extracted_folder"
