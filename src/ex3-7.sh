#!/bin/bash

echo "--- 시스템 상태 확인 메뉴 ---"
echo "1) 사용자 정보"
echo "2) CPU 사용률 확인 (top)"
echo "3) 메모리 사용량 확인 (free)"
echo "4) 디스크 사용량 확인 (df)"
echo "---"
echo "확인할 항목의 번호를 입력하세요 (1-4):"
read choice

case $choice in
    1)
        echo "--- [사용자 정보] ---"
        echo "현재 로그인한 사용자:"
        whoami
        echo "현재 시스템에 로그인된 사용자 목록:"
        users
        ;;
    2)
        echo "--- [CPU 사용률 확인] ---"
        echo "'top'을 실행합니다. (종료는 q)"
        sleep 1
        top
        ;;
    3)
        echo "--- [메모리 사용량 확인] ---"
        echo "'free -h'를 실행합니다. (human-readable)"
        free -h
        ;;
    4)
        echo "--- [디스크 사용량 확인] ---"
        echo "'df -h'를 실행합니다. (human-readable)"
        df -h
        ;;
    *)
        echo "잘못된 선택입니다. 1에서 4 사이의 숫자를 입력하세요."
        ;;
esac
