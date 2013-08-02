#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
	line = line.strip
	a, b, n = line.split.map(&:to_i)
	res = []
	(1..n).each do |i|
		if i % a  == 0 && i % b == 0
			res << "FB"
		elsif i % a == 0
			res << "F"
		elsif i % b == 0
			res << "B"
		else
			res << i
		end
	end
	puts res.join(' ')
end
