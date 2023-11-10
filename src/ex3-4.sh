#!/bin/bash

echo "리눅스가 재미있나요? (yes/no):"
read answer

case "$answer" in
    yes|Yes|YES|y|Y)
        echo "Y"
        ;;
    no|No|NO|n|N)
        echo "nonono"
        ;;
    *)
        echo "잘못된 입력입니다. yes 또는 no를 입력하세요."
        ;;
esac
