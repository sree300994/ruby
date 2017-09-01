# output = "#ILoveBangalore"
puts "Enter a sentence"
sentence = gets.chomp # chomp is used to remove \n character
puts sentence
if sentence == ""
	puts false
else
	words = sentence.split(" ")
	puts "words"
	puts words
	output = "#"
	words.each do |word|
		puts "word"
		puts word
		output = output + word.capitalize
		puts "output"
		puts output
	end
	
	if output.length > 140
	   puts false
    else 
	   puts output
    end

end

