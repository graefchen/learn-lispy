#!/usr/bin/env nu

# installing the micro parser combinator library in c 

def main [] {
	print "Installing the mpc.c file"
	http get https://raw.githubusercontent.com/orangeduck/mpc/master/mpc.c | save src/mpc.c --force
	print "Installing the mpc.ch file"
	http get https://raw.githubusercontent.com/orangeduck/mpc/master/mpc.h | save src/mpc.h --force
	print "Finished installing the mpc.c and mpc.h files of the micro parser combinator library"
}