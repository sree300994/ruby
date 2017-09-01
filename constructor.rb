class Movie
	attr_accessor :name, :language, :release_date

	# constructor
	def initialize(name, language, release_date)
		@name = name
		@language = language
		@release_date = release_date
	end

	def details
		"#{name} - #{language} - #{release_date}"
	end
end

# m1 = variable / object / data
m1 = Movie.new("Kirk Party","Kannada","2016-12-10") # method which invokes the constructor
# m1 = Movie.new
# m1.name = "Krik Party"
# m1.language = "Kannada"
# m1.release_date = "2016-12-10" # yyyy-mm-dd
puts m1.details
m1.release_date = "2016-12-16"
puts m1.details
