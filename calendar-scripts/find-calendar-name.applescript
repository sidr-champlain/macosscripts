# Verify that the new calendar was created. If ran correctly, the result will be a calendar id number

tell application "Calendar"
	
	set theCalendarName to "Important Tasks"
	
	set theCalendar to first calendar where its name = theCalendarName
	
end tell

