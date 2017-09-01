# relational operators : >, >=, <, <=, ==, !=
# boolean methods = empty?, nil?


temp = 33
puts "Recommened Activity"
if temp > 40
	puts "Swimming"
elsif temp > 30
	puts "Tennis"
elsif temp > 20 
	puts "Badminton"
elsif temp > 0
	puts "Chess"
else
	puts "Sit by the fire"
end

# one way of using "case" statement
case 
when temp > 40
	puts "Swimming"
when temp > 30
	puts "Badminton"
		
when temp > 0
	puts "Any Outdoor"
else
	puts "Sit by the fire"
end	

#another way of using "case" statement
 n1 = 10
 n2 = 20
 puts "Enter your command(+,-,/,*)"
 opt = gets.chomp
 case opt 
 when "+"
 	puts n1 + n2
 when "-"
 	puts n1 - n2
 when "*"
 	puts n1 * n2
 when "/"
 	puts n1 / n2
 else
 	puts "Invalid Selection"
 end
 



		
		