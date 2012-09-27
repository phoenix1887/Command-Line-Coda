Command-Line-Coda
=================

Open files and data in Coda / Coda 2 from the Command Line. The popular Mac text editor gets its missing command line function....

Open one or multiple files with:

coda filename1 filename2 filename3 filename4 etc...

-----------------------------------------------------------------------------------------------------

To install, copy and paste this line of code into your Terminal:

echo "IyBDb21tYW5kIExpbmUgQ29kYQpmdW5jdGlvbiBjb2RhKCkKewoJY2w9Ii9BcHBsaWNhdGlvbnMvQ29kYSAyLmFwcC9Db250ZW50cy9NYWNPUy9Db2RhIDIiOwoJaWYgWyAhIC1mICIkY2wiIF07IHRoZW4gZWNobyAiV2hlcmUgaXMgeW91ciBDb2RhLmFwcCBmaWxlPyBGaW5kIGFuZCB0aGVuIHVwZGF0ZSBsb2NhdGlvbiBpbiB+Ly5iYXNoX3Byb2ZpbGUuIjsgZmk7CglpZiBbICIkQCIgIT0gIiIgXSAyPiAvZGV2L251bGw7IHRoZW4KCQlvcGVuIC1hICIkY2wiICIkQCI7CgllbHNlCgkJcmVhZCBkYXRhOwoJCXRtcD1gbWt0ZW1wICIvdG1wL0NvZGFTdGRpbi5YWFhYWFgiYCIudHh0IjsKCQllY2hvIC1uICIke2RhdGF9IiA+ICIkdG1wIgoJCWNvZGEgIiR0bXAiOwoJZmkKfQ==" | base64 -D >> ~/.bash_profile;

And then open a new terminal.

------------------------------------------------------------------------------------------------------

Or you can manually add this code to your bash profile (~/.bash_profile):

# Command Line Coda
function coda()
{
  cl="/Applications/Coda 2.app/Contents/MacOS/Coda 2";
	if [ ! -f "$cl" ]; then echo "Where is your Coda.app file? Find and then update location in ~/.bash_profile."; fi;
	if [ "$@" != "" ] 2> /dev/null; then
		open -a "$cl" "$@";
	else
		read data;
		tmp=`mktemp "/tmp/CodaStdin.XXXXXX"`".txt";
		echo -n "${data}" > "$tmp"
		coda "$tmp";
	fi
  
------------------------------------------------------------------------------------------------------


To Do:

- Flags? Do we need any?
- Support the * character? coda Febru*
}