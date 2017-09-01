=begin

ITERATORS
1. each
2. for in
3. times

=end

# use it for fixed number of times
n = [10,20,30,40,50]

# n.each do |num|
# 	puts num
# end


# i = 0
# while i < n.join(",").split("")
# 	puts n[i]
# 	i += 1
	
# end

names = ["suresh","veeresh","mahesh","ramesh"]
names.each_with_index do |name,index|
	# 1st block variable is the value, 2nd block variable is the index
	puts "#{index + 1}. #{name.capitalize}"
end


for name in names
	puts name.upcase
end

names.each do |x|
	puts x.upcase
end