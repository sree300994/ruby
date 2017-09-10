# best travel

travel = [50, 55, 57, 58, 60]
array = travel.combination(3).to_a
sum = 174
total = []
i = 0
array.each_with_index do |number, index|
	if number.inject(:+) < sum
		total << number.inject(:+)
	end
end
puts total



