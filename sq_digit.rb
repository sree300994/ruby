require 'pry'

#number = 9119
#output = 811181
puts "Enter a number to square every digit"
number = gets.to_i
output = []
number.to_s.split("").each do |num|
	#binding pry
	output.push(num.to_i * num.to_i)
end

puts output.join("")