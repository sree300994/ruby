class Location
	attr_accessor :address
	attr_reader :id

	@@count = 1

	def initialize(details)
		@address = details[:address]
		@id = @@count
		@@count += 1
	end

	def details 
		"#{id} - #{address}"
	end
end