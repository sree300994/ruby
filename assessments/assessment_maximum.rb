# finding row which have maximum number of 1s

require 'pry'
input = [[0,1,1,1],[0,0,1,1],[1,1,1,1],[0,0,0,0]]

array = []
input.each do |number|
	array << number.find_all{|num| num == 1 }.length
end

puts array
puts number = array.max

array.each_with_index do |num, index|
	if num == number
		puts "output : #{index}"
	end
end

