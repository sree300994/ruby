names = ["sharath", "sreekanth", "mahesh", "teja", "mahidhar", "rohith", "pio"]
search = gets.chomp
output = []
names.each do |name|
	if name.include?(search)
		output.push(name)
	end
end

puts output
