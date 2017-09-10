=begin
	Given an array A [ ] having distinct elements, the task is to find the next greater element for each element of the array in order of their appearance in the array. If no such element exists, output -1 
	Example:
	Input
	1
	4
	1 3 2 4 

	Output
	3 4 4 -1

	Explanation
	In the array, the next larger element to 1 is 3 , 3 is 4 , 2 is 4 and for 4 ? since it doesn't exist hence -1.

	Tags : amazon, array, snapdeal, loops, medium, recursion
=end


# def next_greater(array)
# 	numbers = []
# 	number = array.max
# 	array.each do |n|
# 		if n >= number
# 			numbers.push(-1)
# 		else
# 			numbers.push(n.next)
# 		end
# 	end
# 	return numbers
# end

# puts next_greater([1,4,2,3])

# 4 -1 3 -1







# input = [2,8,5,4,7]
# output = [8,-1,7,7,-1]
array = [2,8,5,4,7]
number = []
fn = array.first
miss_no = array
array.each do |n|
	if n > fn 
		number.push(n)
		fn = n
	end
end
	puts number


















