array = [4,5,15,9,7,8,20,19]
output = []
i = array[-1]
output.push(i)
array.each do |number|
	if number > i
		# i += 1
		output.push(number)
	end
end
# array.each do |number|
# 	while 
		
# 	end
# end
# i = 1
# array.each do |number|
# 		# i += 1
# 	if number > array[i]
# 		# i += 1
# 		output.push(number)
# 	else
# 		i += 1
# 	end
# 	# i += 1
# end
# 	output.push(array.last)

puts output


