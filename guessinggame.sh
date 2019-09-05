#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
    # File number in the current directory.
    local file_number=$(ls -1 | wc -l)

    echo "Try to guess the number of files in the current directory!"
    echo "Type your guessing followed by [Enter]:"
    read guessing

    while [[ $guessing -ne $file_number ]]
    do
        if [[ $guessing -gt $file_number ]]
        then
            echo "Too high."
        else
            echo "Too low."
        fi

        echo "Try another number."
        echo "Type your guessing followed by [Enter]:"
        read guessing
    done 

    echo "Congratulations! Your guess is right!"
}

guessinggame