class Category
	attr_accessor :name
	attr_reader :id

	@@count = 1

	def initialize(details)
		@id = @@count
		@name = details[:name]
		@@count += 1
	end

	def details # instance method / object method
		"#{id} - #{name}"
	end

	def products # instance method
		$products.find_all{|product| product.category_id == self.id}
	end

	def self.all
		$categories
	end

	def self.find(arg)
		$categories.find{|category| category.id == arg}
	end

	def self.find_by_name(arg)
		$categories.find{|category| category.name == arg}
	end
end