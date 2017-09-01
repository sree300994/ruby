def high_low(numbers)
	max = numbers.max
	min = numbers.min
	return "#{max} #{min}"
end

puts high_low([3,2,7,5,1])
puts high_low([1,8,-7,5,19])


