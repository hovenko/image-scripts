#!/bin/bash

set -e

IFS=$'\n'

# Resolution of my old Kodak 8-inch frame
SIZE="800x600"

CWD=`pwd`

OUT="$CWD/resize-800x600"
IN="$CWD"

cd "$IN" || exit 1

mkdir -p "$OUT"

for i in `find . -iname "*.jpg"`
do
    echo $i
    convert "$i" -resize "$SIZE" "$OUT/$i"
done

