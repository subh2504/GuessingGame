#!/usr/bin/env bash
# File: guessinggame.sh
# Peer-graded Assignment: Bash, Make, Git, and GitHub

count=$(ls | wc -l)             #counting the no of files in folder

function guess_game {           # Function to guess and print output
    if [[ $1 -lt $2 ]]          # If statement to check the guess is too low
    then
	echo "Too low!"
    elif [[ $1 -gt $2 ]]        # If statement to check the guess is too high 
    then
	echo "Too high!"
    else
	echo ""
	echo "Congratualations! You guessed right!"
    fi
}

while [[ $count -ne $guess ]]    # Loop to promt user for guess until correct guess
do
    read -p "Guess how many files are in the current directory? : " guess
    echo $(guess_game $guess $count)
    echo ""
done
