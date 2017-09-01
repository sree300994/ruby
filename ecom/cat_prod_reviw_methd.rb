$categories = []
$products = []
$reviews = []

require './category'
require './product'
require './review'
require 'faker'
require 'pry'

# generating unique $$categories
while $categories.length < 10
	category_params = {
		:name => Faker::Commerce.department(1)
	}
	# only pushing unique $categories into the array
	if $categories.find{|c| c.name == category_params[:name]}
		next
	else
		category = Category.new(category_params)
		$categories.push(category)
	end
end

#generating $products
10.times do
	product_params = {
		:name => Faker::Commerce.product_name,
		:price => Faker::Commerce.price(50..250),
		:category_id => $categories.sample.id
	}
	product = Product.new(product_params)
	$products.push(product)
end

# generating $reviews 
10.times do
	review_params = {
		:product_id => $products.sample.id,
		:body => Faker::Lorem.sentence,
		:rating => (1..5).to_a.sample
	}
	review = Review.new(review_params)
	$reviews.push(review)
end


puts "Listing Categories with it's products"
puts "*" * 50
Category.all.each do |category|
	puts category.name
	products = category.products
	if $products.empty?
		puts "No products found"
	else
		$products.each do |product|
			puts "\t #{product.name}"
			product_reviews = product.reviews
			if product_reviews.empty?
				puts "No Reviews found"
			else
				puts "*************** LISTING REVIEWS *************************"
				product_reviews.each do |review|
					puts "\t\t #{review.body} - #{"*" * review.rating}"
				end
			end
		end
	end
end

puts "Listing Products with it's category"
Product.all.each do |product|
	# binding.pry
	puts "#{product.name} - #{product.price} - #{product.category.name}"
end






