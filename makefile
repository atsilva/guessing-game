all: README.md

README.md: guessinggame.sh
	echo "# Guessing game: a UNIX Workbench assignment" > README.md
	echo "make was made at: " >> README.md
	date >> README.md
	echo "\n number of lines of code: " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
