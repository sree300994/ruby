restaurants= {
	:adigas => {
		:location => :Jayanagar,
		:type => :Quick_Bite,
		:phone_number => :NA,
		:cuisines => [:South_India,:Chinese],
		:cost_for_two => 150,
		:addresses => :Jayanagar_4th_Block,
		:highlights => [:Breakfast,:Veg],
		:menu => {
			:south_indian => {
				:idly => 26,
				:vada => 24,
				:coffee => 15,
				:masala_dosa => 43
			}, :Chinese => {
				:noodles => 80, 
				:soup => 40
			}
		}
	}
}


puts "#{restaurants[:adigas][:menu][:Chinese]}"
puts "#{restaurants[:adigas][:location]}"
puts "#{restaurants[:adigas][:menu][:south_indian][:coffee]}"
puts "#{restaurants[:adigas][:phone_number]}"

puts "#{restaurants[:adigas][:cuisines]}"

restaurants[:adigas][:cuisines].each do |x|
	puts x.to_s
end

