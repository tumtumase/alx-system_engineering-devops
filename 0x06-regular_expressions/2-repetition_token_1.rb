#!/usr/bin/env ruby

input = ARGV[0]
matches = input.scan(/hb+t+n/)
puts matches.join
