#!/usr/bin/env ruby

# Your regex must be built for the Oniguruma library
# This regex will match:
# - Exactly 10 digits with no separators
# - 10 digits with spaces between groups of 3-3-4
# - 10 digits with hyphens between groups of 3-3-4
phone_regex = /^\s*(?:\d{10}|\d{3}[\s-]\d{3}[\s-]\d{4})\s*$/

exit 1 unless ARGV[0] && ARGV[0].match?(phone_regex)
puts ARGV[0].gsub(/[\s-]/, '')
