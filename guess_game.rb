puts "Enter your Name"

name = gets.chomp

puts "Welcome " + name

target_number = Random.rand(1..100)

max_guesses = 10
player_guess = 0

puts target_number = 45
while player_guess < max_guesses #while loop is used to check condition
	puts "you have " + (max_guesses - player_guess).to_s + "chances left"

	puts "Enter your number"

	guess = gets.to_i

	if guess < target_number #if loop is used to tell the condition is whether low or high in one condition only

		puts "Oops! your guess is low"

		elsif guess > target_number #elsif loop is used to tell the condition is whether low or high in multiple conditions

		    puts "Oops! your guess is high"	
		elsif guess == target_number

			puts "GOOD JOB " + name + " you guessed my number"

		break #loop end

	end #end is used to stop the usage of the loop

	player_guess = player_guess + 1

end

if player_guess == max_guesses
	puts "Sorry you are out of chances my target number is " + target_number.to_s

end