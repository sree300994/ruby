numbers = [2,1,2,1,3,2,2,2]

result = {}

numbers.each do |n|

	result[n] = numbers.count(n)
end

high_value = result.values.max

puts a = result.key(high_value)

puts "#{a} appears #{high_value} times"