#!/bin/bash

set -e

IFS=$'\n'

SIZE="1920x1080"

CWD=`pwd`

OUT="$CWD/resize-hd1080"
IN="$CWD"

cd "$IN" || exit 1

mkdir -p "$OUT"

for i in `find . -iname "*.jpg"`
do
    echo $i
    gm convert "$i" -resize "$SIZE" "$OUT/$i"
done

