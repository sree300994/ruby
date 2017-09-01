numbers = 12123

num_array = numbers.to_s.split("")

one_count = 0
two_count = 0
three_count = 0

one_count = num_array.count("1")
two_count = num_array.count("2")
three_count = num_array.count("3")

puts "1 - #{"*" * one_count }"
puts "2 - #{"*" * two_count }"
puts "3 - #{"*" * three_count }"