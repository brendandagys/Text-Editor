editor: editor.c
				$(CC) editor.c -o editor -Wall -Wextra -pedantic -std=c99

run: editor
				./editor

runf: editor
				./editor editor.c
