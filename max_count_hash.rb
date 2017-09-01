numbers = [1,2,3,1,2,3,1,1,1]

result = {}

numbers.uniq.each do |num|

	result[num] = numbers.count(num)

end

puts "The  value which is used max times are"

puts result.values.max

puts "The most used key is"

puts result.key(result.values.max)