alphabet = ('a'..'z').to_a

open(ARGV[0]).each_line do |line|
	missing = (alphabet - line.downcase.split('')).join
	puts missing.empty? ? "NULL" : missing
end
