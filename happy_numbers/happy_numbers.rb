#!/usr/bin/env ruby

def sumsq(n)
	sum = 0
	while n > 0
		sum += (n % 10) ** 2
		n /= 10
	end
	sum
end

def is_happy(n)
	seen = [n]
	while true
		n = sumsq(n)
		if n == 1
			return true
		elsif seen.include? n
			return false
		end
		seen << n
	end
end

File.open(ARGV[0]).each_line do |line|
	num = line.to_i
	puts is_happy(num) ? 1 : 0
end
