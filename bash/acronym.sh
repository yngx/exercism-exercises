#!/usr/bin/env bash

 main () {
    word=$1
    acronym+=''
    IFS=' -_*' read -ra ADDR <<< "$word"
    for i in "${ADDR[@]}"; do
        if [ -n "$i" ]; then
            i=${i^^}
            acronym+=${i:0:1}
        fi
    done
    echo "$acronym"
  }
  
main "$@"
