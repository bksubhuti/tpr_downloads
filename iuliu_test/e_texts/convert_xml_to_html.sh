#!/bin/bash

rm ./html/*

for file in xml/e*; do
    base_name=$(basename "$file" .xml)
    output_file="./html/${base_name}.html"
    xsltproc ../tipitaka-latn.xsl "$file" > "$output_file"
done
