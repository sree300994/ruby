numbers = [10,20,3,25]

min_number = numbers[0]
max_number = numbers[0]
                  
puts numbers.join(",")
puts min_number
puts max_number


numbers.each do |number|
	puts number
	if number < min_number
		puts number
		min_number = number
		puts min_number
	elsif number > min_number
		puts number
		max_number = number
		puts max_number
	end
end

puts "Minimum Value in array : #{min_number}"
puts "Minimum Value in array : #{numbers.min}"

puts "Maximum Value in array : #{max_number}"
puts "Maximum Value in array : #{numbers.max}"


sum = 0
numbers.each do |number|
	sum = sum + number
end

puts "Sum of the array is #{sum}"
puts "Sum of the array is #{numbers.inject(:+)}"

puts "Average of the array is #{sum.to_f/numbers.length}"

