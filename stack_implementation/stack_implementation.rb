class Stack < Array
end

open(ARGV[0]).each_line do |line|
	nums = line.strip.split.map(&:to_i)
	stack = Stack.new
	nums.each do |num|
		stack.push num
	end
	to_print = []
	prints = true
	while num = stack.pop
		to_print << num if prints
		prints = !prints
	end
	puts to_print.join ' '
end
