# C Text Editor

This is a simple text editor written in C. The program allows you to open a blank text editor or open an existing file to edit.

## Features

- Create new or open existing files
- Search text and inspect matches in both directions
- Syntax highlighting support for multiple languages (currently only C/C++)

## Important files

- `editor.c` - The source code for the text editor
- `Makefile` - Commands to compile and run the program
- `dummy-editor.c` - A sample file
- `editor` - The compiled ARM binary.

## Cloning the Repository

To clone the repository, use the following command:

```bash
git clone https://github.com/brendandagys/Text-Editor.git text-editor
cd text-editor
```

## Compiling the program

The compiled binary for ARM is provided in the root directory. If you want to recompile, simply run `make` or `make editor`.

## Running the program

You can run the editor in two ways:

1. Blank editor; new file

        `make run`
        `./editor`

2. Opening an existing file

        `make runf` (to edit `dummy-editor.c`)
        `./editor filename`
