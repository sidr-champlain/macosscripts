# Install brew.sh and adduser.sh through AppleScript.
# It will install in the application terminal.
# DISCLAIMER! THIS WON'T RUN UNLESS YOU HAVE INSTALLED THE BREW.SH AND ADDUSER.SH FILES
# Also, you will need to add those file into your /Users/yourusername. Replace yourusername with your the current username! 


# Open Terminal

tell application "Terminal"
	
	# Run the brew.sh file.
	
	do script "zsh brew.sh"
	
	# One Second Delay time 
	delay 1
	
	# Run the adduser.sh file
	
	do script "zsh adduser.sh"
	
end tell