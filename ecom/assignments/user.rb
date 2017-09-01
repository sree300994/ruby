class User
	attr_accessor :username, :email
	attr_reader :id
	
	@@count = 1

	def initialize(details)
		@id = @@count
		@username = details[:username]
		@email = details[:email]
		@@count += 1
	end

	def details
		"#{id} - #{username} - #{email}"
	end
end


