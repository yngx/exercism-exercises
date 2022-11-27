#!/usr/bin/env bash

 main () {
   declare -i number=$1
   declare -i index=0
   declare -i sum=0

   declare -i length=${#number}
   while [ "$index" -lt "$length" ]; do
      local character=${number:index:1}
      index+=1
      
      local exp=$((character**length))
      sum+=$((exp))
   done

   if [ "$sum" == "$1" ]; then
      echo "true"
   else
      echo "false"
   fi 
 }

main "$@"