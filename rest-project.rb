require 'httparty'
require 'json'
$url = "http://localhost:4000/api/v0/"

def index
	response = HTTParty.get($url + "projects")
	projects = JSON.parse(response.body)
	puts "*" * 50
	puts "Listing Projects"
	puts "*" * 50
	projects.each_with_index do |project, index|
		puts "#{index + 1}. #{project["name"]}(#{project["id"]})"
	end
end

def show_errors
	puts "*" * 50
	puts "These errors prohibitted the record to be saved"
	puts "*" * 50
	puts project["errors"]
end

def new_project
	project = {}
	puts "Enter name"
	project["name"] = gets.chomp
	puts "Enter Client ID"
	project["client_id"] = gets.chomp
	puts "Start Date (yyyy-mm-dd)"
	project["start_date"] = gets.chomp
	puts "End Date (yyyy-mm-dd)"
	project["end_date"] = gets.chomp
	response = HTTParty.post($url + "projects", body: {"project" => project})
	project = JSON.parse(response.body)
	if project.has_key?("errors")
		show_errors(project)
		new_project
	else
		puts "Project created : #{project["name"]}"
	end
end

def edit
	index
	puts "Enter the id of the record to edit"
	id = gets.to_i
	response = HTTParty.get($url + "projects/#{id}")
	project = JSON.parse(response.body)
	puts project
	if project.has_key?("alert")
		puts project["alert"]
	else
		cont = 'y'
		while cont == 'y'
			puts "1.Name \n2.Client_Id \n3.Start_Date \n4.End_Date"
			option = gets.to_i
			case option
			when "1"
				puts "Enter Name"
				project["name"] = gets.chomp
			when "2"
				puts "Enter Client_Id"
				project["client_id"] = gets.chomp
			when "3"
				puts "Enter Start_Date"
				project["start_date"] = gets.chomp
			when "4"
				puts "Enter End_Date"
				project["end_date"] = gets.chomp
			else
				puts "Invalid Option"
			end
			puts "Do you wish to continue(y/n)"
			cont = gets.chomp
		end
		response = HTTParty.patch($url + "projects/#{id}", body: {"project" => project})
		project = JSON.parse(response.body)
		if project.has_key?("errors")
			show_errors(project)
			edit
		else
			puts "Project Updated : #{project["name"]}"
		end
	end
end

cont = 'y'
while cont == 'y'
	puts "1.List \n2.Add \n3.Edit \n4.Show \n5.Delete"
	option = gets.chomp
	case option
	when "1"
		index
	when "2"
		new_project
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

puts "Program Completed"


