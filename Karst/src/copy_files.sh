#!/bin/bash

INPUT_DIR=$1
OUTPUT_DIR=$2
FILE_PATH=$3

for operon_path in "$INPUT_DIR"*; do
        operon=$(basename $operon_path)
        mkdir -p "$OUTPUT_DIR"/"$operon"
        cp "$operon_path"/"$FILE_PATH" "$OUTPUT_DIR"/"$operon"
done
