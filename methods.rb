# n1 = 10
# n2 = 20
# name = "ani"
# puts n1 + n2

# puts name.capitalize

# 1
# method defination in ruby
# def add
# 	puts "The method got executed"
# end

# add # calling the method or invoking the method

# 2
def add(n1,n2) # here n1 & n2 are known as parameters
	return n1 + n2 # return keyword is optional because, the last statement executed in a method will be the returned value
	# return "Hello"
end

puts add(10,20) # 10 & 20 are known as arguments
result = add(20,20) # 20 & 20 are known as arguments
puts result
puts add(30,30)
puts add "hello " , "30"
puts add
