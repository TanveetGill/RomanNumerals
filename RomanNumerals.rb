@roman_num = {
	1000 => "M",
	500 => "D",
	100 => "C",
	50 => "L",
	10 => "X",
	5 => "V",
	1 => "I"
}

# take number and modulo by first key in hash
# if its remainder is less than num's value
# push the value of the key in to the string output
# then modulo by the next hash key and repeat untill remainder is 0

def to_roman(num)
	output = ""
	@roman_num.each do |key, val|
		remainder = num%key.to_i
		while remainder < num
			output << val
			num = num - key.to_i
		end
	end
	output
end
 
# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
 
# TODO: what other cases could you add to ensure your to_roman method is working?