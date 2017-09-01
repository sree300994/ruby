class Restaurant
	attr_accessor :name, :location_id, :phone_number, :address
	attr_reader :id

	@@count = 1

	def initialize(details)
		@id = @@count
		@name = details[:name]
		@location_id = details[:location_id]
		@address = details[:address]
		@phone_number = details[:phone_number]
		@@count += 1
	end

	def details
		"#{id} - #{name} - #{location_id} - #{address} - #{phone_number}"
	end
end

