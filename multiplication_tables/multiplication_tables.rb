#!/usr/bin/env ruby

(1..12).each do |i|
	line = ""
	(1..12).each do |j|
		line << (i * j).to_s.rjust(4)
	end
	puts line.strip
end
