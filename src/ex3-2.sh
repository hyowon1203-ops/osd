#!/bin/bash

echo "y = 0.5 * x^2 계산기입니다."
echo "x값을 입력하세요 (종료는 q):"

while read x
do
    if [ "$x" == "q" ]; then
        break
    fi

    echo "y ="
    python3 -c "print(0.5 * ($x**2))"

    echo ""
    echo "다음 x값을 입력하세요 (종료는 q):"
done

echo "계산기를 종료합니다."
