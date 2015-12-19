#!/bin/sh

IPS="
"

SIZE="1920x1080"

CWD=`pwd`

OUT="$CWD/resize-hd1080"
IN="$CWD"

cd "$IN" || exit 1

if [ -d "$OUT" ]
then
    echo "Output directory already exists!"
    exit 1
fi

mkdir "$OUT"

for i in `find . -iname "*.jpg"`
do
    echo $i
    gm convert "$i" -resize "$SIZE" "$OUT/$i"
done

