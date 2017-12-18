# finding out the number whether it is prime or not

puts "Enter your number"
number = gets.to_i

if (number / 1 == number) && (number / number == 1) && (number % 2 != 0)
	puts "true" 
else
	puts "false"
end


