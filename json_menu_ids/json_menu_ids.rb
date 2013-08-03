require 'json'

File.open(ARGV[0]).each_line do |line|
	next if line.strip.empty?
	menu = JSON.parse line
	sum = 0
	menu['menu']['items'].each do |item|
		next if item.nil? || item['label'].nil?
		sum += item['id']
	end
	puts sum
end
