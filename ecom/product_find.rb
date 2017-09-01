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

puts "Enter the product to be searched"
prod_id = gets.to_i
product = Product.find(prod_id)
if product.nil?
	puts "Product not found"
else
	puts product.details
end

puts "Enter the name to be searched"
prod_name = gets.chomp
product = Product.find_by_name(prod_name)
if product.nil?
	puts "Product not found"
else
	puts product.details
end

