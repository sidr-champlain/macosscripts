# Create a New Calendar to store upcomming events.

tell application "Calendar"
	set theCalendarName to "Important Tasks"
	set theCalendarDescription to "Calendar for upcomming important tasks."
	set theNewCalendar to make new calendar with properties {name:theCalendarName, description:theCalendarDescription}
end tell

# Open the Calendar Application and you will see "Important Tasks" on the Left Side.