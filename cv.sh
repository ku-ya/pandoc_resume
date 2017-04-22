#!/bin/zsh

src=src
build=build

for i in $(ls $src/*.md) ; do
    echo $i
    cvBuildName=$(basename "$i" .md)
    pandoc -f markdown -t html5 -o $build/$cvBuildName.html $i
done

pandoc -s -f markdown -t html5\
    -o $build/full.html\
    -A $build/short_description.html\
    -A $build/education.html\
    $src/cv.md

