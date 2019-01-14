#!/bin/bash

set -e

IFS=$'\n'

SIZE="1280x1280"

CWD=`pwd`

OUT="$CWD/resize-web"
IN="$CWD"

cd "$IN" || exit 1

mkdir -p "$OUT"

for i in `find . -iname "*.jpg"`
do
    echo $i
    convert "$i" -resize "$SIZE" "$OUT/$i"
done

