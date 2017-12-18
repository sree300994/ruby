def equal(numbers)
	number = (numbers.length) / 2
	array1 = numbers.first(number)
	array2 = numbers.last(number)
	sum1 = array1.inject(:+)
	sum2 = array2.inject(:+)
	if sum1 == sum2
		return array is balanced
	elsif sum1 < sum2
		return "numbers is unbalanced so #{sum2 - sum1} to be added on left side of numbers" 
	elsif sum1 > sum2
		return "numbers is unbalanced so #{sum1 - sum2} to be added on right side of numbers"
	end
end

puts equal([1,2,1,2,1,3])
puts equal([20,10])
