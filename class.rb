# blueprint
class Restaurant
	# attributes / properties
	# methods / behaviours
	#instance Variables = are values held indside an object. it is represented using @
	
	# this is a writer method / setters
   def name=(r_name)
	 # here @name is an attribute of  an object, it is also known as an instance variable
	 @name = r_name
    end

    def location=(r_location)
    	@location = r_location
    end

   # this is a reader method / 
    def name 
	 @name
    end
    
    def location
    	@location
    end
end

# Restaurant is a class
# r1 is an object of the Restaurant Class
r1 = Restaurant.new
r1.name = "adigas" # writer method
r1.location = "Jaya Nagar"
puts r1.class
puts r1.name # reader method
puts r1.location
puts "".chomp

r2 = Restaurant.new
r2.name = "Mc Donalds"
r2.location = "Koramangala"
puts r2.class
puts r2.name
puts r2.location
puts "".chomp

r3 = Restaurant.new
r3.name = "Adayar"
r3.location = "Silk Board"
puts r3.class
puts r3.name
puts r3.location




