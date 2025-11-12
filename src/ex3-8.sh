#!/bin/bash

DB_DIR="DB"
TRAIN_DIR="train"
FILES_TO_CREATE=5

# 1. "DB" 폴더 확인 및 생성
if [ ! -d "$DB_DIR" ]; then
    echo "'$DB_DIR' 폴더가 없어 새로 생성합니다."
    mkdir "$DB_DIR"
else
    echo "'$DB_DIR' 폴더가 이미 존재합니다."
fi

# 2. 5개 파일 생성 및 압축
echo "'$DB_DIR' 폴더 내에 5개의 임의 파일을 생성합니다."
touch "$DB_DIR/file1.txt"
touch "$DB_DIR/file2.txt"
touch "$DB_DIR/file3.txt"
touch "$DB_DIR/file4.txt"
touch "$DB_DIR/file5.txt"

echo "생성된 파일 목록:"
ls -l "$DB_DIR"

echo "파일을 'db_archive.tar'로 압축합니다."
tar -cvf db_archive.tar "$DB_DIR"

# 3. "train" 폴더 생성 및 링크
echo "'$TRAIN_DIR' 폴더를 생성합니다."
mkdir -p "$TRAIN_DIR"

echo "'$DB_DIR'의 파일들을 '$TRAIN_DIR' 폴더로 심볼릭 링크합니다."
ln -s "../$DB_DIR/file1.txt" "$TRAIN_DIR/link_file1.txt"
ln -s "../$DB_DIR/file2.txt" "$TRAIN_DIR/link_file2.txt"
ln -s "../$DB_DIR/file3.txt" "$TRAIN_DIR/link_file3.txt"
ln -s "../$DB_DIR/file4.txt" "$TRAIN_DIR/link_file4.txt"
ln -s "../$DB_DIR/file5.txt" "$TRAIN_DIR/link_file5.txt"

echo "'$TRAIN_DIR' 폴더의 링크 목록:"
ls -l "$TRAIN_DIR"
