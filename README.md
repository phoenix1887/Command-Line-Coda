Command-Line-Coda
=================

Give Mac's Text Editor "Coda" / "Coda 2" file-opening capabilities on your command line. Open one more more files in coda with the command:

coda filename1 filename2 filename3 filename4 etc...



To install, copy and paste this line of code into your Terminal:

bp=~/.bash_profile; echo "" >> $bp; echo "" >> $bp; echo "# Command Line Coda" >> $bp; echo 'function coda()' >> $bp; echo '{' >> $bp; echo 'open -a /Applications/Coda\ 2.app/Contents/MacOS/Coda\ 2 "$@"' >> $bp; echo '}' >> $bp;