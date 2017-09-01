puts "Enter your name"
name = gets.chomp # by default gets reads the value as a string, .chomp removes the new line (\n) character
puts "welcome " + name
puts "Enter value for n1"
n1 = gets.to_i # (.to_i) is used for type conversion from string to integer
puts "Enter value for n2"
n2 = gets.to_i # (.to_i) is used for type conversion from string to integer

puts n1 + n2