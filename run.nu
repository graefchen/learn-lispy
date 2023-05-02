#!/usr/bin/env nu

def build [] {
	let cFilenames = (ls **/*.c | get name)
	let compilerFlags = (--std=c99 -Wall)
	let optimiseFlags = (-O3)

	# Printing the filenames to check if they are correct
	# print $cFilenames

	# Making the directory
	(mkdir bin)

	print "> Making the executable"
	clang $cFilenames $compilerFlags $optimiseFlags -o ./bin/lispy.exe
	print "> Finished making the exectable"

	# Executing the lispy file
	.\bin\lispy.exe
}

def main [] {
	build
}