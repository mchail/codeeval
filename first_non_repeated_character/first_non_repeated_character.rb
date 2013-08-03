File.open(ARGV[0]).each_line do |line|
	letters = line.strip.split('')
	freq = letters.each_with_object(Hash.new(0)) do |letter, hash|
		hash[letter] += 1
	end
	puts freq.select{ |k, v|
		v == 1
	}.keys.first
end
