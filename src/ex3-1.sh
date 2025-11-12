#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "사용법: ./ex3-1.sh [숫자1] [숫자2]"
else
    num1=$1
    num2=$2

    add=$(expr $num1 + $num2)
    sub=$(expr $num1 - $num2)
    mul=$(expr $num1 \* $num2)

    echo "$num1 + $num2 = $add"
    echo "$num1 - $num2 = $sub"
    echo "$num1 * $num2 = $mul"

    if [ "$num2" -eq 0 ]; then
        echo "$num1 / $num2 = (0으로 나눌 수 없습니다)"
        echo "$num1 % $num2 = (0으로 나눌 수 없습니다)"
    else
        div=$(expr $num1 / $num2)
        mod=$(expr $num1 % $num2)
        echo "$num1 / $num2 = $div"
        echo "$num1 % $num2 = $mod"
    fi
fi
