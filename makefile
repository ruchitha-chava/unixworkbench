all: README.md

README.md: guessinggame.sh
	echo "# The Guessing Game" > README.md
	echo "" >> README.md
	echo "#### unix-work-assessment-1" >> README.md
	echo "" >> README.md
	echo "- Last run of *make* was on **$$(date +'%b %d, %Y')** at **$$(date -u +'%I:%M:%S %p') GMT**" >> README.md
	echo "" >> README.md
	echo "- Number of lines of code in *guessinggame.sh* is **$$(wc -l < guessinggame.sh)**" >> README.md
	echo "" >> README.md

clean:
	rm README.md
