#!/bin/bash

set -e

IFS=$'\n'

CWD=`pwd`

OUT="$CWD/unsharp-mask"
IN="$CWD"

cd "$IN" || exit 1

mkdir -p "$OUT"

for i in `find . -iname "*.jpg"`
do
    echo $i
    gimp -i -b "(simple-unsharp-mask \"$i\" \"$OUT/$i\" 1.0 0.5 0)" -b '(gimp-quit 0)'
done

