first_name = "sree"
last_name = 'kuraakula' # "kuraakula"
middle_name = "KaNtH"

# here first_name can be referred as a variable, or object
=begin
	str + str = concatenation
	num + num = addition
	str + num = error
	str + num.to_s = concatenation
=end

puts first_name + " " + last_name # concatenation
puts first_name.capitalize # "Sree"
puts first_name # "sree"

puts first_name.upcase # "SREE"
puts last_name.upcase # "KURAAKULA"

puts middle_name.downcase # "kanth"
puts middle_name.capitalize # "Kanth"

puts first_name.length # 4
puts "The length of my name is " + first_name.length.to_s # association proxy - ability to chain methods is ruby

#puts middle_name.reverse # "deed" == "deed"
# comma seperated
tags = "programming, ruby, javascript"
languages = tags.split(", ") # ["programming", "ruby", "javascript"]
puts languages

# with spaces
players = "virat virat virat sachin-virat"
names = players.split(" ") #["virat", "virat", "virat", "sachin-virat"]
puts names

#without spaces
word = "apple"
fruit = word.split(" ") # ["apple"]
puts fruit

letters = word.split("") # ["a", "p", "p", "l", "e"]
puts letters

