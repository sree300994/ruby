class Product
	def name=(p_name)
		@name = p_name
	end

	def price=(p_price)
		@price = p_price
	end

	def category=(p_category)
		@category = p_category
	end


	def name
		@name
	end

	def price
		@price
	end

	def category
		@category
	end

	def initialize(name, price, category)
		@name = name
		@price = price
		@category = category
	end
end

products = []

p1 = Product.new("LenovoK3Note","9200","Smart Phones")
# p1.name = "LenovoK3Note"
# p1.price = "9200"
# p1.category = "Smart Phones"
# puts p1.class
# puts p1.name
# puts p1.price
# puts p1.category
# puts "".chomp

products.push(p1)

p2 = Product.new("MotorolaG5","10000","Tech")
# p2.name = "MotorolaG5"
# p2.price = "10000"
# p2.category = "Tech"
# puts p2.class
# puts p2.name
# puts p2.price
# puts p2.category
# puts "".chomp

products.push(p2)

p3 = Product.new("Apple7s","60000","High End")
# p3.name = "Apple7s"
# p3.price = "60000"
# p3.category = "High End"
# puts p3.class
# puts p3.name
# puts p3.price
# puts p3.category

products.push(p3)

products.each do |product|
	puts "#{product.name} is INR #{product.price}"
end