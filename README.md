Command-Line-Coda
=================

Give Mac's Text Editor "Coda" / "Coda 2" file-opening capabilities on your command line


To install, copy and paste this code into your Terminal:



echo 'function coda()
{
  open -a /Applications/Coda\ 2.app/Contents/MacOS/Coda\ 2 "$@"
}' >> ~/.bash_profile &




To use, open a new terminal window and type the command:


coda filename


to open the file "filename" in Coda. You can also open multiple files by separating them with a space.


coda filename1 filename2 filename3 filename4 etc...