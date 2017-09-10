names = ["sree", "mahesh", "mahi"]

puts "Enter the name to search"
search_name = gets.chomp

result = names.find {|n| n == search_name}

if result.nil?
	puts "#{search_name} is not found"
else
	puts "#{search_name} is found"
end
