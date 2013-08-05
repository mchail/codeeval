File.open(ARGV[0]).each_line do |line|
	l, r = line.chomp.split.map(&:to_i)
	is_palindrome = (l..r).each_with_object({}) do |n, h|
		h[n] = n == n.to_s.reverse.to_i
	end

	ranges = 0

	(l..r).each do |cursor1|
		pcount = 0
		(cursor1..r).each do |cursor2|
			if is_palindrome[cursor2]
				pcount += 1
			end
			if pcount.even?
				ranges += 1
			end
		end
	end

	puts ranges
end
