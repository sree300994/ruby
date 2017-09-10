numbers = [34,45,56,6,12,8,15]

number = numbers.min

puts "#{number} is the minimum in the array"


# 2nd approach

min_number = numbers[5]

numbers.each do |num|
	if num < min_number
		min_number = num
		puts min_number
	elsif number > min_number
		min_number = number
	end
end
puts "#{min_number} is the minimum in the array"