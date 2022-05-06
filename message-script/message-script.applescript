#Generate Display Dialog for Phone Number

display dialog "Who is the message suppose to be sent to. Enter Phone Number with the format 1234567890?" buttons {"Enter"} default answer ""
set phone_number to text returned of result

display dialog "What is the message contents?" buttons {"Enter"} default answer ""
set message_data to text returned of result

# Run with iMessage
tell application "Messages"
	
	set myid to get id of first account
	
	set theBuddy to participant phone_number of account id myid
	
	send message_data to theBuddy
	
end tell