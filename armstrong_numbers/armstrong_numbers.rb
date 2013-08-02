File.open(ARGV[0]).each_line do |line|
	num = line.strip
	sum = 0
	num.split('').each do |chr|
		sum += chr.to_i ** num.size
	end
	puts num.to_i == sum ? "True" : "False"
end
