#!/bin/sh
## https://gist.github.com/dougalsutherland/266983

arg=${1:-.}
exts="aux bbl blg brf idx ilg ind lof log lol lot out toc synctex.gz"

if [ -d $arg ]; then
    for ext in $exts; do
        rm -f $arg/*.$ext
    done
else
    for ext in $exts; do
        rm -f $arg.$ext
    done
fi
