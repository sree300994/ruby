# while i < num
# 	puts num[i]
# 	i *= 1
# end
#puts "total is #{num.inject(:*)}"


number = 234

while number > 9

	# product = 1

	# number.to_s.split("").each do |n| # ["2","3","4"] 

	# 	product = product * n.to_i
      
	# end

	# number = product
    
    number = number.to_s.split("").map!{|n| n.to_i}.inject(:*)
end

puts number



