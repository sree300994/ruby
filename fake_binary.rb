given = 4632785

num = given.to_s.split("")

output = []

max = 5

num.each do |number|

	if number.to_i > max

		output.push("1")
	else number.to_i <= max

		output.push("0")
	end
end

puts output.join()