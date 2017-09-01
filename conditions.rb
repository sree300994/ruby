# ternary operator
# (condition) ? s1 : s2

n1 = 10
n2 = 20

if n1 > n2
	puts "n1 is greater"
else
	puts "n2 is greater"
end

puts n1 > n2 ? "n1 is greater" : "n2 is greater"


# unless = if not

n1 = 150
unless n1 > 200
	puts "n1 is less than 200"
end

if !(n1 > 200)
	puts "n1 is less than 200"
end
