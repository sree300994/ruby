require 'pry'
def odd_times_appear(numbers)

result = {}

numbers.each do |n|

	result[n] = numbers.count(n)
	# binding.pry
	if (numbers.count(n) % 1)
		# binding.pry
		# return numbers.count(n)
		
		# return n = result.key(numbers.count(n))
	end
	return "#{n} appears #{numbers.count(n)} times"
end

# odd_value = result.values.max

# number = result.key(odd_value)

# return "#{number} appears #{odd_value} times"

end

puts odd_times_appear([2,3,2,4,2,5,5,3,4,4,4])
# Gvien an array, find the integer that appears an odd number of times,There will always be only one integer that appears an odd number of times.




