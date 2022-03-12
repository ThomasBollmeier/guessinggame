README.md:
	@echo "# Guessing Game" > README.md
	@echo This file has been created by make `date +"on %F at %H:%M:%S"`. >> README.md
	@echo The script file \`guessinggame.sh\` has `cat ./guessinggame.sh | wc -l` lines. >> README.md

clean:
	@rm -f README.md