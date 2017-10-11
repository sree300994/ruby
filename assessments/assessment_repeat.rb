require 'pry'
str = "geeksforgeeks"

arr = str.split("")
# puts arr
arr.each do |alpha|
	if arr.count(alpha) > 1
		binding.pry
		puts alpha
		break
	else
		puts -1
	end
	# break
end