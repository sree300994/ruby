wishlist = [

    {name: "Mini Puzzle", size: "small", clatters: "yes", weight: "light"},

    {name: "Toy Car", size: "medium", clatters: "a bit", weight: "medium"},

    {name: "Card Game", size: "small", clatters: "no", weight: "light"}

];

presents = [

    {size: "medium", clatters: "a bit", weight: "medium"},

    {size: "small", clatters: "yes", weight: "light"}

]

result = []
wishlist.each do |x|
	# puts x 
	# puts "size"
	# puts x[:size]
	presents.each do |y|
		if x[:size] == y[:size] && x[:clatters] == y[:clatters] && x[:weight] == y[:weight]
			a = x[:name]
			result.push(a)
		end
	end
end

puts "#{result}"










