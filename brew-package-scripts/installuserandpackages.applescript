# Install brew.sh through AppleScript.
# It will install in the application terminal.
# DISCLAIMER! THIS WON'T RUN UNLESS YOU HAVE INSTALLED THE BREW.SH FILE
# Also, you will need to add those file into your /Users/yourusername. Replace yourusername with your the current username! 
# Also some applications need sudo passwd so pay attention.


# Open Terminal

tell application "Terminal"
	
	# Run the brew.sh file.
	
	do script "zsh brew.sh"
	
end tell