array = [12,34,45,9,8,90,3]
arr = []
# array.each do |num|
# 	if (num % 2 == 0)
# 		arr.push(num).sort
# 	elsif (num % 1 == 1)
# 		arr = arr.push(num)
# 	end
# end

# array.each do |number|
# 	if (num )
		
# 	end
# end

even = array.find_all{|num| num.even? }.sort

odd = array.find_all { |number| number.odd? }.sort

puts even.join(" ")

arr.push(even)

arr.push(odd)

puts arr.join(" ")