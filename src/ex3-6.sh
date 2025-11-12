#!/bin/bash

echo "[Shell] 셸 스크립트 시작"
echo "[Shell] 'my_program.py'를 인자와 함께 실행합니다: $@"

python3 my_program.py "$@"

echo "[Shell] 셸 스크립트 종료"
