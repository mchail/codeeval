File.open(ARGV[0]).each_line do |line|
	chars = line.downcase.gsub(/[^a-z]/, '').split('')
	freq = chars.each_with_object(Hash.new(0)) do |char, hash|
		hash[char] += 1
	end
	sum = 0
	freq.values.sort.zip((26 - freq.values.size + 1)..26).each do |m, n|
		sum += m * n
	end
	puts sum
end
