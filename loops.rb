i = 0 # initialization
loop do 
	if i < 10 # condition
		puts i
	else
		break # loop control
	end
	i = i + 1  # i += 1 incrementation
end
puts "We are outside the loop"


i = 0 # intialization 
while i < 10 # condition
	#puts i 
	if i.even?
		puts i
	end
	i += 1 # incrementation
end