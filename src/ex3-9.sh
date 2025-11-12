#!/bin/bash

DB_FILE="DB.txt"

# DB.txt 파일이 없으면 생성
touch $DB_FILE

while true
do
    echo "---"
    echo "1) 팀원 정보 추가"
    echo "2) 팀원과 한 일 기록"
    echo "3) 팀원 검색 (이름)"
    echo "4) 수행 내용 검색 (날짜)"
    echo "5) 종료"
    echo "---"
    echo "메뉴를 선택하세요 (1-5):"
    read choice

    case $choice in
        1)
            echo "추가할 팀원의 [이름]을 입력하세요:"
            read name
            echo "[생일] 또는 [전화번호]를 입력하세요:"
            read info
            echo "[INFO] $name : $info" >> $DB_FILE
            echo "-> 정보가 'DB.txt'에 저장되었습니다."
            ;;
        2)
            echo "기록할 [날짜]를 입력하세요 (예: 2025-11-12):"
            read date
            echo "[수행한 일] 내용을 입력하세요:"
            read task
            echo "[TASK] $date : $task" >> $DB_FILE
            echo "-> 작업 내용이 'DB.txt'에 저장되었습니다."
            ;;
        3)
            echo "검색할 [팀원 이름]을 입력하세요:"
            read search_name
            echo "--- [$search_name] 검색 결과 (INFO) ---"
            grep "\[INFO\]" $DB_FILE | grep "$search_name"
            ;;
        4)
            echo "검색할 [날짜]를 입력하세요 (예: 2025-11-12):"
            read search_date
            echo "--- [$search_date] 검색 결과 (TASK) ---"
            grep "\[TASK\]" $DB_FILE | grep "$search_date"
            ;;
        5)
            echo "프로그램을 종료합니다."
            break
            ;;
        *)
            echo "잘못된 선택입니다. 1에서 5 사이의 숫자를 입력하세요."
            ;;
    esac
done
