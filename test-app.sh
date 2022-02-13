#!/bin/bash
charset=({a..z} {A..Z} {0..9})
DUPLICATE_PATTERN="([a-zA-Z0-9]).*\1"
URL="https://ionaapp.com/assignment-magic/dk/short/"
permute(){
  (($1 == 0)) && { echo "$2"; return; }
  for char in "${charset[@]}"
  do
    permute "$((${1} - 1 ))" "$2$char"
  done
}
permute "2" | while read line;
                do
                    if [[ ! $line =~ $DUPLICATE_PATTERN ]];
                        then
                            echo $line
                            var=$(curl $URL$line 2>/dev/null | jq -r ".uid")
                            echo "++++++++++++++ $var ++++++++++++++"
                            if [[ ! $var =~ ^[a-zA-Z0-9]{32}$ ]]
                                then
                                    echo "Test is NOT passed because of $var"
                                    break 1
                            fi
                    else
                        echo "Same Charachter! . . ."
                        echo $line
                        continue
                    fi
                done