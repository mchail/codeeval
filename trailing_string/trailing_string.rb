class String
	def ends_with?(s)
		!!(self =~ /#{s}$/)
	end
end

File.open(ARGV[0]).each_line do |line|
	str, trail = line.strip.split(',')
	puts str.ends_with?(trail) ? 1 : 0
end
