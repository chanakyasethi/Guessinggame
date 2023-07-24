#!/usr/bin/bash

echo -e "Please enter number of files in the current directory. \n"
read -p answer

echo -e "Guess number of files in the current directory. \n"
shopt -s nullglob
numfiles=(*)
numfiles=${#numfiles[@]}


function game {

while (( guess != $1 )); do

	read -p "Enter guess : " guess
	
	if (( guess < $1 )); then
		echo "Too low"
		
	elif (( guess > $1 )); then
		echo "Too high"
		
	fi
done

echo -e "Correct! Thank you for playing.\n"

}

game $numfiles
