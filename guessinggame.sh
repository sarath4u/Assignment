#!/usr/bin/env bash
# File name: guessinggame.sh
# Author : R Sarath
# A game in which the user guesses the no of files in the directory

function guessinggame {
    let bools=true
    while [[ bools -eq true ]]
    do
        read -p "Guess the no of files in the current directory: " ans
        if [[ ans -eq $(ls | wc -l) ]]
        then
            echo "Congratulations, you are right!"
            let bools=!true
        elif [[ ans -lt $(ls | wc -l) ]]
        then   
            echo "Try higher!"
        else
            echo "Try lower"
        fi
    done
}

guessinggame
