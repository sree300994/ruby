players = "virat virat virat sachin sachin dhoni dhoni dhawan rahul"

names = players.split(" ")

result = {}

names.uniq.each do |name|
	
	result[name] = names.count(name)

end

puts result

result.each do |key,value|
	
	puts "#{key} - #{"*" * value}"

end