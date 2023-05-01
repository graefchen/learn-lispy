#!/bin/bash

# I am using the Clang Compiler here
# Should work with tcc and clang

mkdir -p bin

cFilenames=$(find . -type f -name "*.c")
compilerFlags="-std=c99 -Wall" # -g -Wall

# To make the executable
echo "> Making the executable"
clang $cFilenames $compilerFlags -o ./bin/lispy.exe
echo "> Finished making the exectable"
