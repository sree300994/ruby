# define method to take variable number of arguments
def cart_total(*prices) # here prices will be an array
	# sum = 0
	# prices.each do |price|
	# 	sum += price
	# end
	return prices.inject(:+)
end


puts cart_total(100)
puts cart_total(100,200)
puts cart_total(100,200,300)