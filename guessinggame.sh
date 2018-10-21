# guessing game bash code
num_files=$(ls -F | wc -l)
echo 'how many files do you think are on this directory?'
read guess
# echo "really? ${guess} files??"
function eval_guess {
	while [[ $guess -ne $num_files ]]
	do
		if ! [[ '$guess' =~ ^[0-9]+$ ]]
		then
			echo 'the guess should be an integer number... guess again'
		elif [[ $guess -gt $num_files ]];
		then
			echo "that's too many... guess again"
		else
			echo "that's too few... guess again"
		fi
		read guess
	done
	echo "congratulations, you guessed right!"
	exit 1;
}
eval_guess
