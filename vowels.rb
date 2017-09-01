sentence = "Now is the time for all good people"

sen_arr = sentence.downcase.split("")

puts "#{sen_arr}"

vowels = {
	:a => 0, :e => 0, :i => 0, :o => 0, :u => 0
}

sen_arr.each do |letter|
	case letter
	when "a"
		vowels[:a] += 1
	when "e"
		vowels[:e] += 1
	when "i"
		vowels[:i] += 1
	when "o"
		vowels[:o] += 1
	when "u"
		vowels[:u] += 1
	end
end

puts "Total Vowels : #{vowels.values.inject(:+)}"

puts "Uniq Vowels : #{vowels.select {|k,v| v != 0}.keys}"

puts "Total Vowel count #{vowels}"			
			
		
			
			

