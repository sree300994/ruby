require './restaurant'
require './location'
require './cuisine'
require './restaurant_cuisine'
require './user'
require './reviews'
require 'faker'

restaurants = []
locations = []
cuisines = []
restaurant_cuisines = []
users = []
reviews = []

# generating locations
while locations.length < 5
	location_params = {
		:address => Faker::Address.street_name
	}
	location = Location.new(location_params)
	locations.push(location)
end

puts "Listing Locations"
puts "*" * 50
locations.each do |location|
	puts location.details
end

# generating cuisines
c1 = Cuisine.new({:name => "SouthIndian"})
c2 = Cuisine.new({:name => "NorthIndian"})
c3 = Cuisine.new({:name => "Mexican"})
c4 = Cuisine.new({:name => "Chinese"})
c5 = Cuisine.new({:name => "Andhra"})
c6 = Cuisine.new({:name => "Hyderabad"})
cuisines.push(c1,c2,c3,c4,c5,c6)

puts "*" * 50
puts "Listing Cuisines"
puts "*" * 50
cuisines.each do |cuisine|
	puts cuisine.details
end

# generating restaurants
10.times do
	restaurant_params = {
		:name => Faker::Company.name,
		:location_id => locations.sample.id,
		:address => locations.sample.address,
		:phone_number => Faker::PhoneNumber.phone_number
	}
	restaurant = Restaurant.new(restaurant_params)
	restaurants.push(restaurant)
end

puts "*" * 50
puts "Listing Restaurants"
puts "*" * 50
restaurants.each do |restaurant|
	puts restaurant.details
end

# generating restaurant_cuisines

20.times do
	restaurant_cuisine_params = {
		:cuisine_id => cuisines.sample.id,
		:restaurant_id => restaurants.sample.id
	}
	restaurant_cuisine = RestaurantCuisine.new(restaurant_cuisine_params)
	restaurant_cuisines.push(restaurant_cuisine)
end

puts "*" * 50
puts "Listing RestaurantCuisine"
puts "*" * 50
restaurant_cuisines.each do |restaurant_cuisine|
	puts restaurant_cuisine.details
end

# generating users

5.times do
	username = Faker::Internet.user_name
	user_params = {
		:username => username,
		:email => Faker::Internet.free_email(username)
	}
	user = User.new(user_params)
	users.push(user)
end

puts "*" * 50
puts "Listing Users"
puts "*" * 50
users.each do |use|
	puts use.details
end

# generating reviews

20.times do
	review_params = {
		:user_id => users.sample.id,
		:restaurant_id => restaurants.sample.id,
		:body => Faker::Lorem.sentence,
		:rating => (1..5).to_a.sample
	}
	review = Reviews.new(review_params)
	reviews.push(review)
end

puts "*" * 50
puts "Listing Reviews"
puts "*" * 50
reviews.each do |review|
	puts review.details
end





