numbers = [5,3,2,8,1,4]
result = []
odd = numbers.find_all{|n| n.odd? }

puts "#{odd}"

puts sort = "#{odd.sort} "
max = 5
numbers.each do |num|
	if num.odd?
		if num > max
			result.unshift(num)
		else num < max
			result.unshift(num)
		end
	else num.even?
		result.push(num)
    end
end
puts result
