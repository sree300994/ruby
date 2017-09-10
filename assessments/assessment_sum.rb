# Find sum of top-left to bottom-right diagonals

array = [[1, 0, 0, 0],[0, 1, 0, 0],[0, 0, 1, 0],[0,0,0,1]]

sum = 0
array.each do |number|
	number.each do |num|
		if 
			sum += num
		end
	end
end
puts sum


