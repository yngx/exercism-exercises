#!/usr/bin/env bash

  main () {
    hamming_dist=0
    strand_A="$1"
    strand_B="$2"

    if [ "$#" -ne 2 ]; then
        echo "Usage: hamming.sh <string1> <string2>"
        exit 1
    fi

    if [ ${#strand_A} != ${#strand_B} ]; then
        echo "strands must be of equal length"
        exit 1
    fi

    for ((i=0; i < ${#strand_A}; i++));
    do
        if [ ${strand_A:$i:1} != ${strand_B:$i:1} ]; then
            ((hamming_dist++))
        fi
    done    
    echo "$hamming_dist"
  }

  main "$@"