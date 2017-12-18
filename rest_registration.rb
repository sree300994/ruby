require 'httparty'
require 'json'
require 'faker'
$url = "http://localhost:3000/api/v1/registrations"

10.times do
	registration = {"name" => Faker::Name.first_name, "no_of_tickets" => Random.rand(1..5)}
	response = HTTParty.post($url, body: {"registration" => registration})
	sleep 3
	puts response
end




