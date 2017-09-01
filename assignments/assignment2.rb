numbers = [10,20,30,40,50,20,40,80,30,90]

num = gets.to_i

count = 0

numbers.each do |x|
	if x == num
		count = count + 1
	end
end

puts "#{num} is present in #{count} times"