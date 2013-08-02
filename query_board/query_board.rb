class Array
	def sum
		reduce do |a, b|
			a + b
		end
	end
end

class QueryBoard
	def initialize
		@board = Array.new(256, Array.new(256, 0))
	end

	def run
		File.open(ARGV[0]).each_line do |line|
			command, *args = line.strip.split
			command.gsub!(/([a-z])([A-Z])/, "\\1_\\2").downcase!
			__send__ command, *args.map(&:to_i)
		end
	end

	def set_col(j, x)
		@board.each do |row|
			row[j] = x
		end
	end

	def set_row(i, x)
		@board[i] = Array.new(256, x)
	end

	def query_col(x)
		puts @board.map{|row| row[x]}.sum
	end

	def query_row(x)
		puts @board[x].sum
	end
end

QueryBoard.new.run
