Command-Line-Coda
=================

## Usage

Open files and data in Coda / Coda 2 from the Command Line. The popular Mac text editor gets its missing command line function!

Open one or multiple files with:

	coda filename1 filename2 filename3 filename4 etc...

or pipe straight data into coda from stdin:

	du -m ~/ | sort -nr | head -n 100 | coda


## To Install
Copy and paste this line of code into your Terminal:

	echo '
	IyBDb21tYW5kIExpbmUgQ29kYQpmdW5jdGlvbiBjb2RhKCkKewoJIyBkZWZpbmUgY29kYSBhcHAgcGF0aAoJY2w9Ii9BcHBsaWNhdGlvbnMvQ29kYSAyLmFwcC9Db250ZW50cy9NYWNPUy9Db2RhIDIiOwoJIyB0ZXN0IGZvciBjb2RhIGFwcAoJaWYgWyAhIC1mICIkY2wiIF07IHRoZW4gZWNobyAiV2hlcmUgaXMgeW91ciBDb2RhLmFwcCBmaWxlPyBGaW5kIGFuZCB0aGVuIHVwZGF0ZSBsb2NhdGlvbiBpbiB+Ly5iYXNoX3Byb2ZpbGUuIjsgZmk7CgkjIHRlc3QgZm9yIGNvbW1hbmQgbGluZSBpbnB1dHMKCWlmIFsgIiRAIiAhPSAiIiBdIDI+IC9kZXYvbnVsbDsgdGhlbgoJCSMgaW50ZXJwcmV0IGNvbW1hbmQgbGluZSBpbnB1dHMgYXMgZmlsZXMgYW5kIG9wZW4gdGhlbSB3aXRoIGNvZGEKCQlvcGVuIC1hICIkY2wiICIkQCI7CgllbHNlCgkJIyByZWFkIGZyb20gc3RhbmRhcmQgaW5wdXQgYW5kIGR1bXAgaW50byBhIHRlbXBvcmFyeSBmaWxlCgkJdG1wPWBta3RlbXAgIi90bXAvQ29kYVN0ZGluLlhYWFhYWCJgIi50eHQiOwoJCXdoaWxlIHJlYWQgZGF0YTsgZG8KCQkJZWNobyAiJHtkYXRhfSIgPj4gIiR0bXAiOwoJCWRvbmU7CgkJIyBvcGVuIHRlbXAgZmlsZSB3aXRoIGNvZGEKCQljb2RhICIkdG1wIjsKCWZpOwp9
	' | base64 -D >> ~/.bash_profile;

And then open a new terminal.



## The Code
You can manually add this code to your bash profile (~/.bash_profile):

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
  
------------------------------------------------------------------------------------------------------


## To Do:

- Flags? Do we need any?
- Support the * character? coda Febru*