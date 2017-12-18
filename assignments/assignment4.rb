puts "Enter your number"

num = gets.to_i

n = 0

if num < 0

 	puts "The number #{num} is not valid"

 else
 	puts "The numbers 1 to n are"
 	num.times do
 	    puts n += 1
    end
end