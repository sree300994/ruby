#http://api.openweathermap.org/data/2.5/weather?q=kadapa&APPID=3ae18949940ecdb295e65ef1a2186a0f&units=metric

require 'httparty'
require 'json'
require 'pp'

url = "http://api.openweathermap.org/data/2.5/weather?"
key = "3ae18949940ecdb295e65ef1a2186a0f"

puts "Enter the city"
city = gets.chomp

puts "#{url}q=#{city}&APPID=#{key}&units=metric"

response = HTTParty.get("#{url}q=#{city}&APPID=#{key}&units=metric")
#response variable/ object is from HTTParty: :Response class

#response.body holds the json data, json is string format
result = JSON.parse(response.body)

puts "The temperature in #{result["name"]} (#{result["coord"]["lon"]},#{result["coord"]["lat"]}) is #{result["main"]["temp"]}"