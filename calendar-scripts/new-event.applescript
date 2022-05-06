# Save this file as an Application so you can just double click it without haveing to open the script file everytime!

# Generate display dialog to capture event data.

display dialog "What is the Calendar Name?" buttons {"Enter"} default answer ""
set event_name to text returned of result

display dialog "What is the summary of the event?" buttons {"Enter"} default answer ""
set event_summary to text returned of result

display dialog "What is the description of the event?" buttons {"Enter"} default answer ""
set event_description to text returned of result

display dialog "Where is this event located?" buttons {"Enter"} default answer ""
set event_location to text returned of result

display dialog "When is the start day / time for the event. Please enter the time and date in this format: Example: May 6, 2022 9:00:00 AM" buttons {"Enter"} default answer ""
set event_start to text returned of result

display dialog "When is the start day / time for the event. Please enter the time and date in this format: Example: May 6, 2022 9:00:00 PM. Make sure the end date is after the starting date otherwise the script and calendar won't exucte successfully" buttons {"Enter"} default answer ""
set event_end to text returned of result


# Set Variables 

set calendarName to event_name
set theSummary to event_summary
set theDescrption to event_description
set theLocation to event_location
set startDate to event_start
set endDate to event_end


set startDate to date startDate
set endDate to date endDate

# Run Calendar with above Variables and User Input
tell application "Calendar"
	tell (first calendar whose name is calendarName)
		make new event at end of events with properties {summary:theSummary, start date:startDate, end date:endDate, description:theDescrption, location:theLocation}
	end tell
end tell

# Verify created event by checking the Calendar Application. 