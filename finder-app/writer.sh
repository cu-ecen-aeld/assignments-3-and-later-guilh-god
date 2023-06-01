#!/bin/sh
writefile=$1
writestr=$2

if [ $# -eq 0 ]; then
    echo "Parameters were not specified!"
    exit 1
fi

if [ $# -eq 1 ]; then
    echo "Parameters were not specified!"
    exit 1
fi

DIR="$(dirname "${writefile}")"

if [ ! -d "$DIR" ]; then
    echo "Non-existent directory"
    mkdir -p "${DIR}"
    error=$(echo "${writestr}" > "${writefile}")
else
    error=$(echo "${writestr}" > "${writefile}")
fi
