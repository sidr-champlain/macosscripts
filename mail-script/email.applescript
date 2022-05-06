# Generate display dialog to capture email data.

display dialog "What is the recipient Name?" buttons {"Enter"} default answer ""
set email_name to text returned of result

display dialog "What is the recipient Email Address?" buttons {"Enter"} default answer ""
set email_address to text returned of result

display dialog "What is the subject title?" buttons {"Enter"} default answer ""
set email_subject to text returned of result

display dialog "Type email content?" buttons {"Enter"} default answer ""
set email_content to text returned of result

# Set Variables 

set recipientName to email_name
set recipientAddress to email_address
set theSubject to email_subject
set theContent to email_content

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
