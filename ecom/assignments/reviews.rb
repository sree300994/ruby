class Reviews
	attr_accessor :user_id, :restaurant_id, :body, :rating
	attr_reader :id

	@@count = 1

	def initialize(details)
		@id = @@count
		@user_id = details[:user_id]
		@restaurant_id = details[:restaurant_id]
		@body = details[:body]
		@rating = details[:rating]
		@@count += 1
	end

	def details
		"#{id} - #{user_id} - #{restaurant_id} - #{body} - #{rating}"
	end
end



