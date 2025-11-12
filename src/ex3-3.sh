#!/bin/bash

scores=()
total=0

echo "점수를 입력하세요 (종료는 q):"

while read score
do
    if [ "$score" == "q" ]; then
        break
    fi
    scores+=($score)
    echo "다음 점수 입력 (종료는 q):"
done

echo "--- 개별 등급 ---"
for s in "${scores[@]}"
do
    total=$(expr $total + $s)
    if [ "$s" -ge 90 ]; then
        echo "$s : A"
    else
        echo "$s : B"
    fi
done

count=${#scores[@]}

if [ "$count" -eq 0 ]; then
    echo "입력된 점수가 없습니다."
else
    avg=$(expr $total / $count)
    echo "--- 평균 점수 및 등급 ---"
    echo "평균 점수: $avg"

    if [ "$avg" -ge 90 ]; then
        echo "평균 등급: A"
    else
        echo "평균 등급: B"
    fi
fi
