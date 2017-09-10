# knowing age of person by using class and constructors in ruby

class Age
	attr_accessor :name, :age

	def initialize(details)
		@name = details["name"]
		@age = details["age"]
	end

	def details
		"#{name}s age is #{age}"
	end
end

a1 = Age.new("name"=>"john","age"=>"34")
puts a1.details