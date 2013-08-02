#!/usr/bin/env ruby

primes = Enumerator.new do |g|
	found = [2]
	g.yield 2
	test = 1
	while true
		test += 2
		is_prime = true
		found.each do |f|
			if test % f == 0
				is_prime = false
				break
			end
		end
		if is_prime
			found << test
			g.yield test
		end
	end
end

sum = 0
(1..1000).each do
	sum += primes.next
end

puts sum
