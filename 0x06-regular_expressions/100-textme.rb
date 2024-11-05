#!/usr/bin/env ruby

# Ensure the log entry is provided as a command-line argument
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} 'log entry'"
  exit 1
end

# Capture the input log entry
log_entry = ARGV[0]

# Define the regex patterns for sender, receiver, and flags
sender_match = log_entry.match(/\[from:(.*?)\]/)
receiver_match = log_entry.match(/\[to:(.*?)\]/)
flags_match = log_entry.match(/\[flags:(.*?)\]/)

# Extract matched values or set to nil if not found
sender = sender_match ? sender_match[1] : ""
receiver = receiver_match ? receiver_match[1] : ""
flags = flags_match ? flags_match[1] : ""

# Output the required format
puts "#{sender},#{receiver},#{flags}"
