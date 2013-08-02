File.open(ARGV[0]).each_line do |line|
	puts line.strip.split('').permutation.map{|p| p.join('')}.uniq.sort.join(',')
end
