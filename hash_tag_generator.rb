def hash_tag_generator(sentence)

if sentence.empty? # sentence.length == 0 #sentence.length.zero?
	return false
end

output = "#"

sentence.split(" ").each do |word|
	output += word.capitalize
end

return (output.length > 140) ? false : output
# if result.length > 140
# 	return false
# else
# 	return result
# end
end

puts hash_tag_generator("Hello there thanks for trying my kata")

puts hash_tag_generator("")




