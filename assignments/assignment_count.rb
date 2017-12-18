=begin
	Given two unsorted arrays A, B. They can contain duplicates. For each element in A , count elements less than or equal to it in array B .

	array1 = [1, 2, 3, 4, 7, 9]
	array2 = [0, 1, 2, 1, 1, 4]

	output 

	[4,5,5,6,6,6]

	Tags : easy-medium, amazon, array, hashes 
=end

array1 = [1, 2, 3, 4, 7, 9]
array2 = [0, 1, 2, 1, 1, 4]

array1.each do |number|
	puts array2.find_all{ |num| num <= number}.length
end




