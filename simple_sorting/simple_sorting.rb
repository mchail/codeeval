File.open(ARGV[0]).each_line do |line|
	puts line.strip.split.sort{ |a, b|
		a.to_f <=> b.to_f
	}.join(' ')
end
