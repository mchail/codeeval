File.open(ARGV[0]).each_line do |line|
	line.chomp!
	next if line.empty?
	num = line.to_i
	answer = num.to_s.split('').permutation.to_a.map(&:join).map(&:to_i).sort.find{|v| v > num}
	if answer.nil?
		answer = (num.to_s.split('') + ['0']).permutation.to_a.map(&:join).map(&:to_i).sort.find{|v| v > num}
	end
	puts answer
end
