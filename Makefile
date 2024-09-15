# Default target
ARCH := arm64
# ARCH := x86_64

COMPILERFLAGS := -Wall -Wextra -pedantic -std=c99

# Determine target architecture
ifeq ($(ARCH), x86_64)
    ARCH_FLAGS := -arch x86_64
    OUTPUT := editor-x86_64
else ifeq ($(ARCH), arm64)
    ARCH_FLAGS := -arch arm64
    OUTPUT := editor-arm64
else
    $(error "Unknown architecture: $(ARCH). Supported: arm64, x86_64")
endif

# Default target to build
all: $(OUTPUT)

# Run for a specific architecture
arm64:
	$(MAKE) ARCH=arm64
x86_64:
	$(MAKE) ARCH=x86_64

# Compile into a binary
$(OUTPUT): editor.c
	$(CC) $(ARCH_FLAGS) $(COMPILERFLAGS) editor.c -o $(OUTPUT)

# Run the editor (defaults to the current architecture)
run: $(OUTPUT)
	echo $(ARCH)
	./$(OUTPUT)

# Run the editor with a specific file (defaults to the current architecture)
runf: $(OUTPUT)
	echo $(ARCH)
	./$(OUTPUT) dummy-editor.c

# Clean up generated files
clean:
	rm -f editor-arm64 editor-x86_64
