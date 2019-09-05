README.md:
	echo "##Guessinggame" > README.md
	echo "$(date -Iminutes)" >> README.md
	echo "$(cat guessinggame.sh | wc -l) >> README.md