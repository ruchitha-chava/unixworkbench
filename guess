#! /usr/bin/env bash
function play {
	read -n1 -rsp $'Press any key to continue:\n'
	echo "Type in your guess:"
	read input
	}

function guess {
	echo -e "Welcome to the GUESSING GAME!\n"
	echo -e "Guess the exact number of files in the current directory to win\n"

	integer='^-?[0-9]+([.][0-9]+)?$'
	number=$(ls | wc -l)

	play

	while [[ $input -ne $number ]]
	do
		if ! [[ $input =~ $integer ]]
		then
			echo -e "Error: You did not enter a number!\n"
			play
		elif [[ $input -lt $number ]]
		then
			echo -e "Incorrect! You guessed too low!\n"
			play
		elif [[ $input -gt $number ]]
		then
			echo -e "Incorrect! You guessed too high!\n"
			play
		fi
	done

	if [[ $input -eq $number ]]
	then
		echo "BINGO! YOU WIN!"
	fi
}
guess
