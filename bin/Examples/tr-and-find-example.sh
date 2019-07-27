#!/bin/bash

echo 'Spaces will be replaced with "_" in this string' | tr -s ' ' '_'
# Spaces will be replaced with "_" in this string and

# Find all files that contain multiple strings/patterns
# When using Unix or Linux, if you ever need to find all
# files that contain multiple strings/patterns, — such as
# finding all Scala files that contain 'try', 'catch', and
# 'finally' — this find/awk command seems to do the trick:
find . -type f -name *js -exec awk 'BEGIN {RS=""; FS="\n"} /try/ && /catch/ && /finally/ {print FILENAME}' {} \;

