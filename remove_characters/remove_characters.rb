File.open(ARGV[0]).each_line do |line|
	str, remove = line.strip.split(', ')
	puts str.gsub(/[#{remove}]+/, '')
end
