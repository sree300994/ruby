# adding multiples of 3 and 5 below 10
def multiples(numbers)
	output = []
	numbers.each do |number|
		if (number % 3 == 0) || (number % 5 == 0)
			output << number
		end
	end
	return output.inject(:+)
end

puts multiples([1,2,3,4,5,6,7,8,9])

