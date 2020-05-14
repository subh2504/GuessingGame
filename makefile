all: README.md

README.md:
	echo "# Guessing Game" >> README.md
	echo "## Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
	echo "" >> README.md
	echo "This makefile was run at: $$(date)">> README.md
	echo "" >> README.md
	echo "There were $$(wc -l guessinggame.sh| egrep -o '[0-9]+') lines in guessinggame.sh" >> README.md

clean:
	rm README.md