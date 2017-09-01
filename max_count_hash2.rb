require 'pry'
array = [["virat",3],["sachin",2]]

result = {}
binding.pry
array.each do |sub|
	binding.pry
	result[sub.first] = sub.last
binding.pry
end

puts result