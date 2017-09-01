require './category'
require './product'

categories = []
c1 = Category.new({:name => "Sports"})
c2 = Category.new({:name => "Gardening"})
categories.push(c1,c2)

c1.details
c2.details

products = []
p1 = Product.new({:name => "BasketBall", :price => 1000, :category_id => c1.id})
p2 = Product.new({:name => "FootBall", :price => 750, :category_id => c1.id})
p3 = Product.new({:name => "Shovel", :price => 250, :category_id => c2.id})
products.push(p1,p2,p3)

puts "Listing Categories"
puts "*" * 30
categories.each do |category|
	puts category.details
end

puts "*" * 30
puts "Listing Products"
puts "*" * 30
products.each do |product|
	puts "#{product.name} - INR #{product.price} - #{categories.find{|category| category.id == product.category_id}.name}"
end
puts "*" * 30