values = [
	['M', 1000],
	['D', 500],
	['C', 100],
	['L', 50],
	['X', 10],
	['V', 5],
	['I', 1]
]

File.open(ARGV[0]).each_line do |line|
	num = line.strip.to_i
	roman_num = ""
	values.each do |l, v|
		roman_num += l * (num / v)
		num %= v
	end
	roman_num.sub! "DCCCC", "CM"
	roman_num.sub! "CCCC", "CD"
	roman_num.sub! "LXXXX", "XC"
	roman_num.sub! "XXXX", "XL"
	roman_num.sub! "VIIII", "IX"
	roman_num.sub! "IIII", "IV"
	puts roman_num
end
