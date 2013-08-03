open(ARGV[0]) do |f|
	num = f.readline.chomp.to_i
	lines = []
	f.each_line do |line|
		line.chomp!
		next if line.empty?
		if lines.empty? || line.size > lines.last[:size]
			lines << {
				line: line,
				size: line.size
			}
			lines.sort! do |a, b|
				b[:size] <=> a[:size]
			end
			if lines.size > num
				lines.pop
			end
		end
	end
	puts lines.map{ |line|
		line[:line]
	}
end
