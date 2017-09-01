numbers = []
puts = "Enter 5 numbers"
5.times do
	n = gets.to_i
	numbers.push(n)
	# numbers.push(gets.to_i)
end

puts "Input : #{numbers}"

puts "Enter the number to be searched"
search_number = gets.to_i
count = 0 

# 1st Approach
#numbers.each do |num|
		#if num == search_number
			#count += 1
		#end
#end

# 2nd Approach
count = numbers.count(search_number)


if count == 0
	puts "#{search_number} not found"
else
	puts "The number : #{search_number} is found #{count} times"
end

=begin
i = 0
while i < 10
	i += 1

=end