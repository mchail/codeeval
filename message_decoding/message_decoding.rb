class DecoderRing
	def initialize(s)
		@header, @message = s.match(/(^[^01]*)([01]+$)/)[1..2]
		@mapping = mapping(@header)
	end

	def decode
		@msg = @message
		key_length = nil
		result = ""
		while true do
			if key_length.nil?
				key_length = get_key_length
				if key_length == 0
					break
				end
			end
			next_key = chunk(key_length)
			if next_key =~ /^1+$/
				key_length = nil
			else
				result << @mapping[next_key]
			end
		end
		result
	end

	def chunk(n)
		ch, @msg = @msg[0..(n-1)], @msg[n..-1]
		ch
	end

	def get_key_length
		key_length = chunk(3)
		key_length.to_i(2)
	end

	def mapping(h)
		len = 1
		num = 0
		map = {}
		h.each_char do |char|
			num_bin = num.to_s(2).rjust(len, '0')
			if num_bin !~ /0/
				num = 0
				len += 1
				num_bin = num.to_s(2).rjust(len, '0')
			end
			map[num_bin] = char
			num += 1
		end
		map
	end
end

File.open(ARGV[0]).each_line do |line|
	puts DecoderRing.new(line.chomp).decode
end
