def combine(operator, left, right)
	case operator
	when "+"
		left + right
	when "-"
		left - right
	when "*"
		left * right
	when "/"
		left / right
	end
end

File.open(ARGV[0]).each_line do |line|
	line.chomp!

	while line =~ /\D+/
		line.gsub!(/([-*+\/])\s(\d+)\s(\d+)/) do |s|
			operator, left_operand, right_operand = $1, $2.to_i, $3.to_i
			combine operator, left_operand, right_operand
		end
	end

	puts line
end
