Command-Line-Coda
=================

Give Mac's Text Editor "Coda" / "Coda 2" file-opening capabilities on your command line. Open one more more files in coda with the command:

coda filename1 filename2 filename3 filename4 etc...



To install, copy and paste this line of code into your Terminal:

echo "" >> ~/.bash_profile; echo "" >> ~/.bash_profile; echo "# Command Line Coda" >> ~/.bash_profile; echo 'function coda()' >> ~/.bash_profile; echo '{' >> ~/.bash_profile; echo 'open -a /Applications/Coda\ 2.app/Contents/MacOS/Coda\ 2 "$@"' >> ~/.bash_profile; echo '}' >> ~/.bash_profile;