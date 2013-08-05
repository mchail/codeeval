File.open(ARGV[0]).each_line do |line|
	length, chars = line.chomp.split(',')
	length = length.to_i
	chars = chars.split('').uniq
	puts chars.repeated_permutation(length).map(&:join).sort.join(',')
end
