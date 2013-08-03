class String
	def swapcase
		gsub(/([a-z]+|[A-Z]+)/) do |s|
			if s =~ /[a-z]/
				s.upcase
			else
				s.downcase
			end
		end
	end
end

File.open(ARGV[0]).each_line do |line|
	puts line.swapcase
end
