require 'pry'
class Movie
	attr_accessor :name, :language, :release_date

	# we are passing a hash to the constructor
	def initialize(details) # details will now be a hash
		binding.pry
		@name = details[:name]
		@language = details[:language]
		@release_date = details[:release_date]
		binding.pry
	end

	def details
		"#{name} - #{language} - #{release_date}"
	end
end

# we are passing a hash to our constructor
movie1_params = {:name => "Dunkrik", :language => "English", :release_date => "2017-07-21"}
m1 = Movie.new(movie1_params)

movie2_params = {:name => "Ninnu Kori", :language => "Telugu"}
m2 = Movie.new(movie2_params)

movie3_params = {}
m3 = Movie.new(movie3_params)

puts m1.details
puts m2.details
puts m3.details



