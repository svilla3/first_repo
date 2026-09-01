#!/bin/bash

filename=$1

if [ $# -eq 0 ]; then
    echo "Usage: ./homework.sh filename"
    exit 1
fi

if [ ! -f "$filename" ]; then
    echo "Error -oopsies you messed up: $filename does not exist."
    exit 1
fi

echo "Filename: $filename"

echo "Here's my change"

size=$(ls -lh "$filename" | awk '{print $5}')
echo "File size: $size"

lines=$(wc -l < "$filename")
echo "Number of lines: $lines"

characters=$(wc -m < "$filename")
echo "Number of characters: $characters"

matches=$(grep "ATATATAT" "$filename" | wc -l)
echo "Lines containing ATATATAT: $matches"