# Text Editor

This is a simple text editor written in C, using the standard library. The program allows you to open a blank text editor or an existing file to edit.

## Features

- Create new files or open existing ones
- Search text and inspect matches in both directions
- Syntax highlighting support for multiple languages (currently only C/C++)

## Important files

- `editor.c` - The source code for the text editor
- `Makefile` - Commands to compile and run the program
- `dummy-editor.c` - A sample file
- `editor-arm64` - The pre-compiled ARM binary
- `editor-x86_64` - The pre-compiled x86-64 binary

## Cloning the Repository

To clone the repository, use the following command:

```bash
git clone https://github.com/brendandagys/Text-Editor.git text-editor
```

Enter the directory to have access to the Make commands:

```
cd text-editor
```

## Compiling the program

The compiled binaries for ARM64 and x86-64 are provided in the root directory. If you want to re-compile, you have two options:
1. **Assign the proper default target at the top of the Makefile:**

        ARCH := arm64
    or

        ARCH := x86_64

    Finally:

        make

2. **Directly run `make arm64` or `make x86_64`**

## Running the program

You can run the program in two ways:

1. **Blank editor; new file**

    Make:

        make run
    Or, using the binary:

        ./binary-name

2. **Opening an existing file**

    Make:

        make runf
    Or, using the binary:

        ./binary-name filename
