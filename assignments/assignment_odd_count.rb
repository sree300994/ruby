def odd_count(numbers)
	solution = {}
	numbers.each do |number|
		if numbers.count(number) % 2 != 0
			solution[number] = numbers.count(number)
		end
	end
	return solution
end

puts odd_count([2,3,2,4,5,5,3,4,4])

