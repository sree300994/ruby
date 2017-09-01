class Bank
	attr_accessor :account_Number, :name, :balance

	def initialize(details)
		@account_Number = details[:account_Number]
		@name = details[:name]
		@balance = details[:balance]
	end

	def details
		"#{account_Number} - #{name} - #{balance}"
	end

	def transaction(amount,code)
		case code
		when 1
			@balance += amount
		when 0
			if @balance < amount
				puts "Insufficient funds"
			else
				@balance = @balance - amount
			end
		end
	end
end

customers = []

c1 = Bank.new({:account_Number => 12345678, :name => "Sreekanth", :balance => 400})
c2 = Bank.new({:account_Number => 987609876, :name => "Mahesh", :balance => 600})
c3 = Bank.new({:account_Number => 114818569, :name => "Ramana", :balance => 500})
c4 = Bank.new({:account_Number => 114833813, :name => "Sudha", :balance => 300})

customers.push(c1,c2,c3,c4)

puts "Enter your name"
name = gets.chomp

puts "Enter the amount"
amount = gets.to_i

puts "Enter the code"
code = gets.to_i

result = customers.find{|customer| customer.name == name}
puts result.transaction(amount,code)
puts result.details



