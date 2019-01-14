#!/bin/sh

IPS="
"

# Resolution of my old Kodak 8-inch frame
SIZE="800x600"

CWD=`pwd`

OUT="$CWD/resize-web"
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
    convert "$i" -resize "$SIZE" "$OUT/$i"
done

