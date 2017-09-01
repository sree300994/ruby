require './category'
require './product'
require 'faker'
require './user'
require './review'
require 'Date'

categories = []
products = []
users = []
reviews =[]

# generating categories
while categories.length < 10
	category_params = {
		:name => Faker::Commerce.department(1)
	}
	# only pushing unique categories into the array
	if categories.find{|c| c.name == category_params[:name]}
		next
	else
		category = Category.new(category_params)
		categories.push(category)
	end
end

#generating products
100.times do
	product_params = {
		:name => Faker::Commerce.product_name,
		:price => Faker::Commerce.price(50..250),
		:category_id => categories.sample.id
	}
	product = Product.new(product_params)
	products.push(product)
end


# generating users
10.times do
	username = Faker::Internet.user_name
	user_params = {
		:username => username,
		:email => Faker::Internet.free_email(username),
		:mobile => Faker::PhoneNumber.cell_phone
	}
	user = User.new(user_params)
	users.push(user)
end

# generating reviews 
100.times do
	review_params = {
		:user_id => users.sample.id,
		:product_id => products.sample.id,
		:body => Faker::Lorem.sentence,
		:review_date => Faker::Date.between(Date.parse("2017-01-01"), Date.today),
		:rating => (1..5).to_a.sample
	}
	review = Review.new(review_params)
	reviews.push(review)
end


puts "Listing Categories"
puts "*" * 50
categories.each do |category|
	puts category.details
end

puts "*" * 50
puts "Listing Products"
puts "*" * 50
products.each do |product|
	puts "#{product.name} - INR #{product.price} - #{categories.find{|category| category.id == product.category_id}.name}"
end
puts "*" * 50

puts "Listing Users"
puts "*" * 50
users.each do |user|
	puts user.details
end

puts "*" * 50
puts "Listing Reviews"
puts "*" * 50
reviews.each do |review|
	puts review.details
end




