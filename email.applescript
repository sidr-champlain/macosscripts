# Set Variables 

# Change the below outputs to your correct needs

set recipientName to "Automated User"
set recipientAddress to "automateduser@gmail.com"
set theSubject to "Automated Email Created From AppleScript"
set theContent to "This email was generated and sent via AppleScript"

# Invoke Mail Application

tell application "Mail"
	
	# Call the Variables
	set theMessage to make new outgoing message with properties {subject:theSubject, content:theContent, visible:true}
	
	tell theMessage
		make new to recipient with properties {name:recipientName, address:recipientAddress}
		
		# Send Email
		send
		
	end tell
end tell
