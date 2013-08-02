#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
	str, chr = line.strip.split(',')
	puts str.rindex(chr) || -1
end
