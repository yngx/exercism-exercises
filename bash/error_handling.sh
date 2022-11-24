#!/usr/bin/env bash
 
 main () {
    if [ $# -ne 1 ]; 
    then
        echo "Usage: error_handling.sh <person>"
        exit 1
    fi
    echo "Hello, $1"
  }
 
  main "$@"
