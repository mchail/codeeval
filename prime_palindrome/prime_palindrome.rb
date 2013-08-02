#!/usr/bin/env ruby

def sieve(n)
	nums = Array.new(n + 1)
	nums[0] = 0
	nums[1] = 0
	(2..((n ** 0.5).ceil)).each do |f|
		counter = 2 * f
		while counter <= n
			nums[counter] = 0
			counter += f
		end
	end
	res = []
	nums.each_with_index do |num, i|
		res << i if num.nil?
	end
	return res
end

max = 1000
primes = sieve(max)
primes.reverse.each do |prime|
	if prime.to_s == prime.to_s.reverse
		puts prime
		exit
	end
end

