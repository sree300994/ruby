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

puts "Enter the category to be searched"
cat_id = gets.to_i
category = Category.find(cat_id)
if category.nil?
	puts "Category not found"
else
	puts category.details
end

puts "Enter the name to be searched"
cat_name = gets.chomp
category = Category.find_by_name(cat_name)
if category.nil?
	puts "Category not found"
else
	puts category.details
end




