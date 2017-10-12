# require 'pry'

def string_count(str)
	
arr = str.split("")
	# puts arr
	arr.each do |alpha|
		if arr.count(alpha) > 1
			# binding.pry
			return alpha
			break
		else
			return -1
		end
	end
end

puts string_count("fg")