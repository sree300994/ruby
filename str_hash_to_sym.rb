require 'pry'
players = "virat virat sachin virat"

output = []

z = players.split(" ")
puts z
z.uniq.each do |name|
	output.push([name,z.count(name)]) # 1st iteration is output =[["virat",3]]
  # binding.pry
end

output.each do |sub|
	puts "#{sub.first}: #{sub.last}"
end


# one more method
virat_count = 0

sachin_count = 0

virat_count = z.count("virat")

sachin_count = z.count("sachin")

puts "virat: #{virat_count}"

puts "sachin: #{sachin_count}"

x = {}

output.each do |a|
	x[a[0]] = a[1]
end

puts x






