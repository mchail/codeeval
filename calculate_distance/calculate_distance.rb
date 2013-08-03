class Point
	attr_reader :x, :y
	def initialize(s)
		@x, @y = s.scan(/[\d-]+/).map(&:to_i)
	end

	def to(p)
		Math.sqrt((@x - p.x) ** 2 + (@y - p.y) ** 2).to_i
	end
end

File.open(ARGV[0]).each_line do |line|
	x, y = line.strip.scan(/\(.*?\)/).map{|p| Point.new(p)}
	puts x.to(y)
end
