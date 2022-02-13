#!/bin/bash
charset=({a..z} {A..Z} {0..9})
mypattern="([a-zA-Z0-9]).*\1"
URL="https://ionaapp.com/assignment-magic/dk/short/"
cat counter.txt | while read line;
                do
                    if [[ ! $line =~ $mypattern ]];
                        then
                            echo $line
                            cat test.txt
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