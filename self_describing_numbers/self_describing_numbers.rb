def is_self_describing(n)
	freq = n.split('').map(&:to_i).each_with_object(Hash.new(0)) do |num, hash|
		hash[num] += 1
	end
	n.split('').each_with_index do |char, index|
		if freq[index] != char.to_i
			return false
		end
	end
	return true
end

File.open(ARGV[0]).each_line do |line|
	puts is_self_describing(line.strip) ? 1 : 0
end
