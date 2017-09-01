class RestaurantCuisine
	attr_accessor :cuisine_id, :restaurant_id
	attr_reader :id

	@@count = 1

	def initialize(details)
		@id = @@count
		@cuisine_id = details[:cuisine_id]
		@restaurant_id = details[:restaurant_id]
		@@count += 1
	end

	def details 
		"#{id} - #{cuisine_id} - #{restaurant_id}"
	end
end

