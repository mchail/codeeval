class String
	def cap
		return self[0].upcase + self[1..-1]
	end
end

File.open(ARGV[0]).each_line do |line|
	puts line.strip.split.map(&:cap).join(' ')
end
