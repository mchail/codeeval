#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
	set1, set2 = line.split(';').map{|set| set.split(',').map(&:to_i)}
	puts (set1 & set2).join(',')
end
