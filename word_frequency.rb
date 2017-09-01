players = "virat virat virat sachin sachin rahul dhoni dhoni"
=begin
	
	virat - ***
	sachin - **
	rahul - *
	dhoni - **
=end

virat_count = 0 
sachin_count = 0
rahul_count = 0
dhoni_count = 0

names = players.split(" ")
# names hold ["virat", "virat", "virat", "sachin", "sachin", "rahul"]
# virat_count = names.find_all {|name| name == "virat"}.length
virat_count = names.count("virat")
sachin_count = names.count("sachin")
rahul_count = names.count("rahul")
dhoni_count = names.count("dhoni")


puts "Virat - #{"*" * virat_count }"
puts "Sachin - #{"*" * sachin_count }"
puts "Dhoni - #{"*" * dhoni_count }"
puts "Rahul - #{"*" * rahul_count }"