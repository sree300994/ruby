require 'httparty'
require 'json'
$url = "http://localhost:4000/api/v0/"

def index
	response = HTTParty.get($url + "clients")
	clients = JSON.parse(response.body)
	puts "*" * 50
	puts "Listing Clients"
	puts "*" * 50
	clients.each_with_index do |client, index|
		puts "#{index + 1}. #{client["name"]}(#{client["id"]})"
	end
end

def show_errors(client)
	puts "*" * 50
	puts "These errors prohibitted the record to be saved"
	puts "*" * 50
	puts client["errors"]
end

def new_client
	client = {}
	puts "Enter Name"
	client["name"] = gets.chomp
	puts "Enter Mobile"
	client["mobile"] = gets.chomp
	puts "Enter Email"
	client["email"] = gets.chomp
	puts "Enter Website"
	client["website"] = gets.chomp
	response = HTTParty.post($url + "clients", body: { "client" => client})
	client = JSON.parse(response.body)
	
	if client.has_key?("errors")
		show_errors(client)
		new_client
	else
		puts "Client created : #{client["name"]}"
	end
end

def edit
	index
	puts "Enter the id of record to edit"
	id = gets.chomp
	response = HTTParty.get($url + "clients/#{id}")
	client = JSON.parse(response.body)
	puts client
	if client.has_key?("alert")
		puts client["alert"]
	else
		cont = 'y'
		while cont == 'y'
			puts "1.Name \n2.Mobile \n3.Email \n4.Website"
			option = gets.chomp
			case option
			when "1"
				puts "Enter Title"
				client["name"] = gets.chomp
			when "2"
				puts "Enter Mobile"
				client["mobile"] = gets.chomp
			when "3"
				puts "Enter Email"
				client["email"] = gets.chomp
			end
			
		end
	end
end

def show
	index
	puts "Enter the id of the record to show"
	id = gets.to_i
	response = HTTParty.get($url + "clients/#{id}")
	client = JSON.parse(response.body)
	puts client["name"]
	if client.has_key?("alert")
		puts client["alert"]
		show
	else
		puts client["notice"]
	end
end

def delete
	index
	puts "Enter the id of the record to delete"
	id = gets.to_i
	response = HTTParty.delete($url + "clients/#{id}")
	client = JSON.parse(response.body)
	puts client
	if client.has_key?("alert")
		puts client["alert"]
		delete
	else
		puts client["notice"]
	end
end

cont = 'y'
while cont == 'y'
	puts "1.List \n2.Add \n3.Edit \n4.Show \n5.Delete"
	puts "Enter your option"
	option = gets.chomp
	case option
	when "1"
		index
	when "2"
		new_client
	when "3"
		edit
	when "4"
		show
	when "5"
		delete
	else
		puts "Invalid Option"
	end
	puts "Do you wish to continue (y/n)"
	cont = gets.chomp
end

puts "Program completed"


