# finding out the number whether it is prime or not

puts "Enter your number"
number = gets.to_i

if (number % 1 == 0) && (number % number == 0) && (number % 2 != 0)
	puts "true" 
else
	puts "false"
end


