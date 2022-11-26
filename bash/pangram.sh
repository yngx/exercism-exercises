#!/usr/bin/env bash

main () {
    sentence="$1"

    if [ "${#sentence}" -lt 26 ]; then
        echo "false"
        exit 0
    fi

    alphaArray=()
    for i in {1..26}; do
        alphaArray+=(0)
    done

    upperstr=$(echo "$sentence" | tr '[:lower:]' '[:upper:]')
    for ((i=0; i < ${#upperstr}; i++));
    do
        char="${upperstr:$i:1}"
        ord=$(printf "%d" "'$char"); 
        diff=$((ord-65))
        if [ "${diff}" -gt -1 ]; then
            alphaArray[$diff]=1
        fi
    done

    pangram="true"
    for char in "${alphaArray[@]}"; do
        if [ $char == 0 ]; then
            pangram="false"
            break;
        fi
    done

    echo "$pangram"
}

main "$@"