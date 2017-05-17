#limpa a última versão
rf -rf __deployme
mkdir __deployme

#construção
sh scripts/build.#!/bin/sh

#minificação de js
uglify -s bundle.js -o __deployme/bundle.js
#minificação de CSS
cssshrink bundle.css > __deployme/bundle.css

#cópia de HTML e imagens
cp index.html __deployme/index.html
cp -r images/ __deployme/images/

#pronto
date; echo;
