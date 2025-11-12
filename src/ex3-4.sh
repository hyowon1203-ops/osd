#!/bin/bash

scores=()

while true
do
    echo "---"
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 (GPA) 변환"
    echo "5) 종료"
    echo "---"
    echo "메뉴를 선택하세요 (1-5):"
    read choice

    case $choice in
        1)
            echo "추가할 점수를 입력하세요:"
            read new_score
            scores+=($new_score)
            echo "$new_score 점수가 추가되었습니다."
            ;;
        2)
            echo "입력된 모든 점수:"
            echo "${scores[*]}"
            ;;
        3)
            count=${#scores[@]}
            if [ "$count" -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                total=0
                for s in "${scores[@]}"
                do
                    total=$(expr $total + $s)
                done
                avg=$(expr $total / $count)
                echo "평균 점수: $avg"
            fi
            ;;
        4)
            count=${#scores[@]}
            if [ "$count" -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                total=0
                for s in "${scores[@]}"
                do
                    total=$(expr $total + $s)
                done
                avg=$(expr $total / $count)
                
                if [ "$avg" -ge 90 ]; then
                    gpa="A"
                else
                    gpa="B"
                fi
                echo "평균 등급 (GPA): $gpa"
            fi
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
