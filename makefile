README.md:
	echo "**Guessing Name**" >> README.md
	echo >> README.md
	echo "No. of lines of the code: " >> README.md 
	wc -l guessinggame.sh | egrep -o "\d+" >> README.md
	echo >> README.md
	date >> README.md
clean:
	rm README.md

