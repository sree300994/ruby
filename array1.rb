players = ["Dhawan", "Virat", "Rohit"]
# for(var i = 0; i < players.length; i++)

=begin
	In loops we take care of
	1st initialization
	2nd condition
	3rd incrementation
	players = ["Dhawan", "Virat", "Rohit"]
	looping in JS
	for(var i = 0; i < players.length; i++{
	 console.log(players[i]);
	}
	output
	"Dhawan"
	"Virat"
	"Rohit"
=end

#while loop
i = 0 # initialization
while i < players.length # condition
	puts players[i].upcase
	i = i + 1 # or else i += 1 # incrementaion
end

# iterator
# players is array
players.each do |player| # player is block variable
	puts player.upcase
end

puts players.length