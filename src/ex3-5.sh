#!/bin/bash

run_command() {
    echo "전달받은 옵션으로 'ls' 명령어를 실행합니다: $@"
    eval "ls $@"
}

echo "스크립트에 전달된 인자: $@"
run_command "$@"
