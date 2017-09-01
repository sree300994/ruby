winnerlist =[
	{
		"team" => "Real Madrid",
		"country" => "Spain"
	},
	{
		"team" => "Munich",
		"country" => "Germany"
	},
	{
		"team" => "Real Madrid",
		"country" => "Spain"
	},
	{
		"team" => "Real Madrid",
		"country" => "Spain"
	},
	{
		"team" => "Milan",
		"country" => "Italy"
	}
]

puts "Enter your country name"

country_name = gets.chomp

count = 0

team = []

winnerlist.each do |cntry|

	if cntry["country"] == country_name
	    count = count + 1
        team.push(cntry["team"])
	end
end

puts a = team.uniq.join(", ")

puts "#{country_name} has #{a} team and it won #{count} times"	








