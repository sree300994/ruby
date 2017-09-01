def squareSum(numbers)

result = []

numbers.each do |num|
	result.push(num ** 2)
end

# puts result

return result.inject(:+)

end

puts squareSum([2,3,4,5])