class Person
	attr_accessor :first_name, :last_name

	def initialize(details)
		@first_name = details[:first_name]
		@last_name = details[:last_name]
	end

	def details
		"Hello,#{first_name} #{last_name}!"
	end
end

p1 = Person.new({:first_name => "Sreekanth", :last_name => "Kuraakula"})
puts p1.details



