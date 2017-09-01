# n1 = 90
# n2 = 170
# n3 = 55
n1 = gets.to_i

n2 = gets.to_i

n3 = gets.to_i




puts (n1 > n2) && (n1 > n3) ? "n1 is greater" : (n2 > n3) ? "n2 is greater" : "n3 is greater"

if (n1 > n2) && (n1 > n3)
	puts "n1 is greater"
elsif n2 > n3
	puts "n2 is greater"
else
	puts "n3 is greater"
end