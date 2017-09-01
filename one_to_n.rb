puts "Enter your number"

num = gets.to_i
n = 0
numbers = []
numbers.push(n)
numbers.each do |x|
	if num < 0
		puts "The number #{num} is not valid"
    else
    	puts "The numbers 1 to n are"
 	    num.times do
 		puts n += 1
        end
    end
end


=begin
2nd Approach
puts "Enter your number"
numbers = []

number = gets.to_i

while number > 0
	numbers.push(number)
	number -= 1
end

final_number = numbers.reverse

puts final_number.join(", ")


puts "Enter your number"

num = gets.to_i

numbers = 0

numbers.each do |x|
	if x >= 1
		puts "The numbers 1 to n are"
end

=end