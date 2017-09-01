require 'pry'
players = "virat virat virat sachin sachin rahul dhawan dhoni dhoni"

result = []

names = players.split(" ")
binding.pry
names.uniq.each do |name|
	binding.pry
	result.push([name, names.count(name)])
	binding.pry
end

result.each do |sub_array|
	puts "#{sub_array.first} : #{"*" * sub_array.last}"
end