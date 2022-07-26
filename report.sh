#!/bin/bash
IFS="="
while read -r line; do
    read -a Arr <<< "$line"
    echo "Report for ${Arr[0]}"
    echo "content is ${Arr[1]}"

    # git --git-dir $line log --author="maniizu3110" --committer="maniizu3110" --all --since="yesterday" --oneline --branches="feature/*"  >> report.txt
done < paths.txt