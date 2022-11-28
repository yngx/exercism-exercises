# this one was hard, review...

#!/usr/bin/env bash

main () {
message="$1"
    # empty
    if [[ ${message} =~ ^[[:space:]]*$ ]];
    then
      echo "Fine. Be that way!"
    else
      # yelling
      if [[ ${message} = *[[:upper:]]* && ${message} != *[[:lower:]]* ]]; then 
         # question
         if [[ ${message} =~ \?[[:space:]]*$ ]]; then 
            echo "Calm down, I know what I'm doing!"; 
         else 
            echo "Whoa, chill out!"; 
         fi
      # question
      elif [[ ${message} =~ \?[[:space:]]*$ ]]; then 
         echo "Sure.";
      else 
         echo "Whatever."; 
      fi
    fi
 }

main "$@"

# if [[ "$word" =~ (^[0-9,A-Z?.\'[:space:]]+)$ ]]; then echo "yes"; else echo "no"; fi

# [[ ]] vs []
# ${message} vs "$message"
# =~ vs ==