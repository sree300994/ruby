a = 5

b = 2

puts "Enter your operator"

operator = gets.chomp


def arithmetic(n1,n2,operator)	
	case operator
	when "add"
		puts a + b
	when "subtract"
		puts a - b
	when "multiply"
		puts a * b
	when "divide"
		puts a / b
	else
		"Invalid Selection"	
	end
end



