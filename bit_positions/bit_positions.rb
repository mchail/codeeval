#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
	n, p1, p2 = line.strip.split(',').map(&:strip).map(&:to_i)
	puts (n >> (p1 - 1)) & 1 == (n >> (p2 - 1)) & 1
end
