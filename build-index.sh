#!/bin/sh
# Assemble index.html from parts (GitHub storage split)
cat index.part1.html index.part2.html index.part3.html index.part4.html index.part5.html > index.html
echo "Built index.html ($(wc -c < index.html) bytes)"
