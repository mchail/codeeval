#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
	puts line.downcase
end
