#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
	x, n = line.strip.split(',').map(&:strip).map(&:to_i)
	num = n
	num += n while x > num
	puts num
end
