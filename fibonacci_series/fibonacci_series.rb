#!/usr/bin/env ruby

series = [0, 1]

File.open(ARGV[0]).each_line do |line|
	index = line.strip.to_i
	if index > series.size - 1
		(index - series.size + 1).times do
			series << series[-1] + series[-2]
		end
	end
	puts series[index]
end
