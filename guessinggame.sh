#!/bin/bash

determine_num_files() {
    echo `find . -maxdepth 1 -type f | wc -l`
}

read_guess() {
    local guess
    read -p "Your guess: " guess
    echo $guess 
}

run_game() {

    local num_files="$(determine_num_files)"
    local guess
    
    echo "Can you guess the number of files in this directory?"
    echo

    while [ 1 -eq 1 ] 
    do
        guess="$(read_guess)"
        if [ $guess -lt $num_files ] 
        then
            echo "Your guess is too low."
            echo
        elif [ $guess -gt $num_files ] 
        then
            echo "Your guess is too high."
            echo
        else
            echo "Congratulations! You guessed the correct number of $guess files."
            break
        fi
    done

}

run_game
