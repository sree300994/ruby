number = 348597
# output = [7,9,5,8,4,3]
output = []
# ability to chain objects in ruby is known as association proxy, this works BECAUSE whenever we an invoke a method on an object, it returns a new object.
number.to_s.reverse.split("").each do |num|
	output.push(num.to_i)
end

puts "output : #{output}"

puts "#{output.join()}"


=begin
	number.to_s.reverse.split('')

	1st
	number.to_s
	=> "348597"

	2nd
	"348597".reverse
	=> "795843"

	3rd
	"795843".split('')
	=> ["7","9","5","8","4","3"]

=end