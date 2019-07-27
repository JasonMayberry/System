#!/bin/bash

IFS=$'\n'
arr=()
i=0

# Parameter Default Value
inFile=${1:-}
outFile=${2-'~/Desktop/grouped_Index_File.txt'}
if [[ -z $1 ]]; then
    echo '###------> A file name with an absolute path must given'
    echo '###------> Example:~$ groupIndex ~/your-file.txt'
fi
if [[ -f "$1" ]]; then # True if file File or Directory Exists
    while read line
    do
        arr[$i]="$line"
        i=$((i+1))
        # lineArray+=($line)
    done < $1

    printf '%s\n' "${arr[@]}" > $2
    # echo "list Array is ${#arr[@]} items long"
else
    echo '!----------------> File Not Found'
fi

