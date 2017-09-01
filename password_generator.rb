numbers = (0..9).to_a

alphabets = ("A".."Z").to_a + ("a".."z").to_a

special_chars = ("!".."+").to_a

puts "Enter the length of the password"

password_length = gets.to_i

puts "Enter special chars required"

special_chars_count = gets.to_i

puts "Enter numbers required"

numbers_count = gets.to_i

alphabets_count = password_length - special_chars_count - numbers_count

5.times do 

	password = numbers.shuffle.take(numbers_count) + alphabets.shuffle.take(alphabets_count) + special_chars.shuffle.take(special_chars_count)

	puts password.shuffle.join("")
end