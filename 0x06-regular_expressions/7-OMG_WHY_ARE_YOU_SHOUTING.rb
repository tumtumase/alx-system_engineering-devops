#!/usr/bin/env ruby

# Extract only capital letters using Oniguruma-compatible regex
puts ARGV[0].scan(/[A-Z]/).join if ARGV[0]
