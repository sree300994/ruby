array = [6,2,1,8,10]

arr = array.sort

arr.delete(arr.first)

arr.delete(arr.last)

# puts arr.inject(:+)




number = 6
numbers = []
array.each_with_index do |num, index|
	if num > number
		numbers.push(num)
	end
end

puts numbers
