#!/usr/bin/env nu

def build [
	files: list
] {
	let compilerFlags = (--std=c99 -Wall)
	let optimiseFlags = (-O3)

	clang $files $compilerFlags $optimiseFlags -o ./bin/lispy.exe
}

def build_debug [
	files: list
] {
	let compilerFlags = (--std=c99 -Wall)
	let debugFlags = (-g)

	clang $files $compilerFlags $debugFlags -o ./bin/lispy.exe
}

def main [
	--debug (-d) # Compiles a debugabe file
	--run (-r) # Runs the executable after compiling
] {
	# The .c flenames that need to be given to the compiler
	let cFilenames = (ls **/*.c | get name)

	# Printing the filenames to check if they are correct
	# print $cFilenames

	# Making the directory
	(mkdir bin)

	print "> Making the executable"
	if $debug {
		build_debug $cFilenames
	} else {
		build $cFilenames
	}
	print "> Finished making the exectable"

	# Executing the lispy file
	if $run {
		.\bin\lispy.exe
	}
}
