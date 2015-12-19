#!/bin/sh

IPS="
"

CWD=`pwd`

OUT="$CWD/unsharp-mask"
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
    gimp -i -b "(simple-unsharp-mask \"$i\" \"$OUT/$i\" 1.0 0.5 0)" -b '(gimp-quit 0)'
done

