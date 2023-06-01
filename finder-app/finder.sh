#!/bin/sh
filedir=$1
searchstr=$2

if [ $# -eq 0 ]; then
    echo "Parameters were not specified!"
    exit 1
fi

if [ ! -d "$filedir" ]; then
    echo "Non-existent directory"
    exit 1
fi

NUMBER=$(ls -1q $filedir | wc -l )

COUNT=$(grep -rni "${searchstr}" "${filedir}" | wc -l)
echo "The number of files are ${NUMBER} and the number of matching lines are ${COUNT}"