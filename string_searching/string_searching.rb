File.open(ARGV[0]).each_line do |line|
	first, second = line.chomp.split(',')
	regex = second.gsub(/([^\\])\*/, "\\1.*")
	puts first.scan(/#{regex}/).size > 0
end
