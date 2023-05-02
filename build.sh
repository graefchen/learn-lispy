#!/bin/bash

# I am using the Clang Compiler here
# Should work with tcc and clang

mkdir -p bin

cFilenames=$(find . -type f -name "*.c")
compilerFlags="-std=c99 -Wall" # -g -Wall
optimiseFlags="-O3"

# To make the executable
echo "> Making the executable"
clang $cFilenames $compilerFlags $optimiseFlags -o ./bin/lispy.exe
echo "> Finished making the exectable"
