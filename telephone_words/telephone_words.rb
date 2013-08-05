class Twerds
	include Enumerable

	NUM_TO_LETTERS = {
		0 => %w(0),
		1 => %w(1),
		2 => %w(a b c),
		3 => %w(d e f),
		4 => %w(g h i),
		5 => %w(j k l),
		6 => %w(m n o),
		7 => %w(p q r s),
		8 => %w(t u v),
		9 => %w(w x y z)
	}

	def initialize(n)
		@num = n
	end

	def each
		chars = @num.to_s.split('')
		yield 'one'
		yield 'two'
	end
end

File.open(ARGV[0]).each_line do |line|
	puts Twerds.new(line.chomp).to_a.join(',')
end
