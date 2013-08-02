#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
	num = line.strip.to_i
	sum = 0
	while num > 0
		sum += num % 10
		num /= 10
	end
	puts sum
end
