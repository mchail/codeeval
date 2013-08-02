#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
	line = line.strip
	puts line.split.reverse.join(' ') if line.size > 0
end
