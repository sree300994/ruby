numbers = [10,20,30,40,50]

puts "Enter the number to search"
search_number = gets.to_i

result = numbers.find {|n| n == search_number }

if result.nil?
	puts "#{search_number} not found"
else
	puts "#{search_number} is found"
end


=begin
	numbers.each do |n|{
	
	end}
=end