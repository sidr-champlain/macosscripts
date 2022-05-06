#!/bin/zsh

# The following commands create an alias for ifconfig so you don't need to keep scrolling down and reading the entire output.
# This alias will only grab the current ip for the machine. Once you have run this bash script, you can  use Terminal now and enter 'ip' to always get the current ip address of the machine.

# Filter for ip address utilizing grep

ifconfig | grep broadcast | awk '{print $2}'

# Create the alias ip  for ifconfig with your current ip address.

alias ip="echo $(ifconfig | grep broadcast | awk '{print $2}')"

# Run alias

ip 

# If you don't want to constantly run this zsh script, then you will need to create the alias in Terminal, use the above commands.
  
