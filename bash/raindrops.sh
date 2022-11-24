#!/usr/bin/env bash
  
main () {
    str=""
    if [ $(($1%3)) == 0 ]; then
        str+="Pling"
    fi
    
    if [ $(($1%5)) == 0 ]; then
        str+="Plang"
    fi
    
    if [ $(($1%7)) == 0 ]; then
        str+="Plong"
    fi
    if [ -z "${str}" ]; then
        echo $1
    else 
        echo ${str}
    fi
    
  }
  
main "$@"
