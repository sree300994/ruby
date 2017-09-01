# http://api.openweathermap.org/data/2.5/forecast?q=kadapa&APPID=3ae18949940ecdb295e65ef1a2186a0f&units=metric

require 'httparty'
require 'json'

url = "http://api.openweathermap.org/data/2.5/forecast?"
key = "3ae18949940ecdb295e65ef1a2186a0f"

puts "Enter the city name"

city = gets.chomp

puts "#{url}q=#{city}&APPID=#{key}&units=metric"

response = HTTParty.get("#{url}q=#{city}&APPID=#{key}&units=metric")
result = JSON.parse(response.body)

puts "The temperature for the next 5 days in #{result["city"]["name"]} is"

lists = result["list"]
lists.each do |list|
	#puts "#{list["dt_txt"]} temp is #{list["main"]["temp"]}"
	date_time = list["dt_txt"]
	date = date_time.split(" ")[0]
	#puts date
	ddmmyy = date.split("-").reverse
	#puts ddmmyy
	formatted_date = ddmmyy.join("-")
	puts formatted_date
end

