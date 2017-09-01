numbers = [10,9,10,8,15,9]

# even_numbers = numbers.find_all {|n| n % 2 == 0 }
even_numbers = numbers.find_all {|n| n.even? }

# odd_numbers = numbers.find_all {|n| n % 2 == 1 }
odd_numbers = numbers.find_all {|n| n.odd? }

puts "#{even_numbers}"
puts "#{odd_numbers}"

even_sum = 0
even_numbers.each do |even_number|
	even_sum = even_sum + even_number
end

puts "Total is #{even_sum}"

odd_sum = 0 
odd_numbers.each do |odd_number|
	odd_sum = odd_sum + odd_number
end

puts "Total is #{odd_sum}"
