File.open(ARGV[0]).each_line do |line|
	n, m = line.strip.split(',').map(&:to_i)
	puts n - n / m * m
end
