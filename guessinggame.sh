#!/usr/bin/env bash
# File name: guessinggame.sh

bools=true
while [[bools = true]]
do
    read -p "Guess the no of files in the current directory" ans
    if [[ ans -eq $(ls | wc -l) ]]
    then
        echo "Congratulations, you are right!"
        bools = !true
    elif [[ ans -lt $(ls | wc -l) ]]
    then   
        echo "Try higher!"
    else
        echo "Try lower"
    fi
done
