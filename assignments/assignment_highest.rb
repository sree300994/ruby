=begin
	Given an array in such a way that the elements stored in array are in increasing order initially and then after reaching to a peak element , elements stored are in decreasing order. Find the highest element.

	Input:
	2
	11
	1 2 3 4 5 6 5 4 3 2 1
	9
	1 3 4 5 7 8 9 5 2 

	Output:
	6
	9

	Tags : amazon, array, easy-medium
=end

array = [1,2,3,4,5,6,5,4,3,2,1]
high = array.first
array.each do |number|
	if number > high
		high = number
	end
end

puts high











