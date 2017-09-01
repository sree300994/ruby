require 'faker'
class Product
	attr_accessor :name, :price, :description, :category, :availability

	def initialize(details)
		@name = details[:name]
		@price = details[:price]
		@description = details[:description]
		@category = details[:category]
		@availability = details[:availability]
	end

	def details 
		"#{name} - INR #{price} - #{category} - #{availability}"
	end
end

products = []
100.times do
	product_details = {
		:name => Faker::Commerce.product_name,
		:price => Faker::Commerce.price(50..1000),
		:description => Faker::Lorem.paragraph,
		:category => Faker::Commerce.department(1),
		:availability => Faker::Boolean.boolean
	}
	product = Product.new(product_details)
	products.push(product)
end

puts "products < 499"
products.find_all {|product| product.price < 499}
	puts "#{product.details}"

puts "category"
products.each_with_index do |product,index|
  	if product.category == "Kids"
  		puts "#{index + 1}. #{product.details}"
  	end
end

puts "Kids with price between 250 & 750"
products.each_with_index do |product,index|
	if (product.category == "Kids") && (product.price > 250)



