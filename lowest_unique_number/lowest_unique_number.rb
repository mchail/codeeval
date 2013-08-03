File.open(ARGV[0]).each_line do |line|
	nums = line.strip.split.map(&:to_i)
	freq = nums.each_with_object(Hash.new(0)) do |num, hash|
		hash[num] += 1
	end
	winning_value = freq.select{ |k, v|
		v == 1
	}.keys.sort.first
	puts winning_value.nil? ? 0 : nums.index(winning_value) + 1
end
