def missing_num(array)
	missing_number = array.first
	array.each do |number|
		if number == missing_number
			missing_number += 1
		else
			return missing_number
		end
	end
end

puts missing_num([1,2,3,4,6,7,8])