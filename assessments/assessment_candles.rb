array = []
puts "Enter the number of candles you want"
num = gets.to_i
num.times do
	array << gets.to_i
end

puts "The maximum length of candle is #{array.max} and count is #{array.count(array.max)}"

