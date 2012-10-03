#!/bin/bash

# to install, drop the code below this line into your bash profile (~/.bash_profile or ~/.bashrc etc)

# Command Line Coda
function coda()
{
	# define coda app path
	cl="/Applications/Coda 2.app/Contents/MacOS/Coda 2";
	# test for coda app
	if [ ! -f "$cl" ]; then echo "Where is your Coda.app file? Find and then update location in ~/.bash_profile."; fi;
	# test for command line inputs
	if [ "$@" != "" ] 2> /dev/null; then
		# interpret command line inputs as files and open them with coda
		open -a "$cl" "$@";
	else
		# read from standard input and dump into a temporary file
		tmp=`mktemp "/tmp/CodaStdin.XXXXXX"`".txt";
		while read data; do
			echo "${data}" >> "$tmp";
		done;
		# open temp file with coda
		coda "$tmp";
	fi;
}
