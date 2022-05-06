# Launch Calendar to Current Date

tell application "Calendar"
	
	view calendar at current date
	
end tell

# Then switch Calendar to current date day view

tell application "Calendar"
	
	switch view to day view
	
end tell