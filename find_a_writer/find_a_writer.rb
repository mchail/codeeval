File.open(ARGV[0]).each_line do |line|
	line.strip!
	next if line.size == 0
	letters, indices = line.split('|')
	indices = indices.strip.split.map(&:to_i)
	name = indices.map do |index|
		letters[index - 1]
	end.join
	puts name
end
