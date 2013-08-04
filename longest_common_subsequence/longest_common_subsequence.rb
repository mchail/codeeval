require 'json'

File.open(ARGV[0]).each_line do |line|
	line.chomp!
	next if line.empty?
	left, right = line.split(';')
	regex = Regexp.new(left.gsub(/./, "(?:\\0.*)?"))
	puts regex
	puts right.scan(regex).to_json
end
