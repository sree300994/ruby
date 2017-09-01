n1 = 18.3 # Float
n2 = 16.7 # Float
n3 = 20 # Fixnum
n4 = -125

puts n1.class # Float
puts n2.class # Float
puts n3.class # Fixnum

puts n1.round # 18
puts n2.round # 17

# Whenever we invoke a method on an object, it returns a new object, hence our variables is still referring to the old values
=begin
	 multi
	 line
	 comment
=end
puts n1 # 18.3
puts n2 # 16.7

puts n1.ceil # 19
puts n2.ceil # 17
puts n2.floor # 16

# Type Conversions 
puts n1.to_i # 18
puts n3.to_f # 20.0
puts n1.to_s # "18.3"
puts n3.to_s # "20"

puts n4.abs # 125
puts n3.next # 21 (works only on fixnum)

