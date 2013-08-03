File.open(ARGV[0]).each_line do |line|
	vals = line.strip.split
	index = vals.pop.to_i
	puts vals[0 - index]
end
