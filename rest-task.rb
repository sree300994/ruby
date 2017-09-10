require 'httparty'
require 'json'
$url = "http://localhost:4000/api/v2/"

def index
	response = HTTParty.get($url + "tasks")
	tasks = JSON.parse(response.body)
	puts tasks
	puts "*" * 50
	puts "Listing Tasks"
	puts "*" * 50
	tasks.each_with_index do |task, index|
		puts "#{index + 1}. #{task["title"]}(#{task["id"]})"
	end
end

def show_errors(task)
	puts "*" * 50
	puts "These errors prohibitted the record to be saved"
	puts "*" * 50
	puts task["errors"]
end

def new_task
	task = {}
	puts "Enter title"
	task["title"] = gets.chomp
	puts "Enter due date (yyyy-mm-dd) "
	task["due_date"] = gets.chomp
	puts "What's the status (true/false)"
	task["is_completed"] = gets.chomp
	response = HTTParty.post($url + "tasks", body: {"task" => task})
	task = JSON.parse(response.body)
	if task.has_key?("errors")
		show_errors(task)
		new_task
	else
		puts "Task Created : #{task["title"]}"
	end
end

def edit
	index
	puts "Enter the id of record to edit"
	id = gets.to_i
	# invokes the show action
	response = HTTParty.get($url + "tasks/#{id}")
	puts response
	puts JSON.parse(response.body)
	task = JSON.parse(response.body)
	puts task["due_date"]
	if task.has_key?("alert")
		puts task["alert"]
	else
		cont = 'y'
		while cont == 'y'
			puts "1.Title \n2. Due Date \n3. Completed"
			option = gets.chomp
			case option
			when "1"
				puts "Enter Title"
				task["title"] = gets.chomp
			when "2"
				puts "Enter Due Date"
				task["due_date"] = gets.chomp
			when "3"
				puts "Is completed (true/false)"
				task["is_completed"] = gets.chomp
			else
				puts "Invalid Option"
			end
			puts "Do you wish to continue (y/n)"
			cont = gets.chomp
		end
		response = HTTParty.patch($url + "tasks/#{id}", body: {"task" => task})
		task = JSON.parse(response.body)
		if task.has_key?("errors")
			show_errors(task)
			edit
		else
			puts "Task Updated : #{task["title"]}"
		end
	end
end

def show
	index
	puts "Enter the id of the record to show"
	id = gets.to_i
	response = HTTParty.get($url + "tasks/#{id}")
	task = JSON.parse(response.body)
	puts task
	puts task["title"]
	puts task["due_date"]
	if task.has_key?("alert")
		puts task["alert"]
		show
	else
		puts task["notice"]
	end
end

def delete
	index
	puts "Enter the id of the record to delete"
	id = gets.chomp
	response = HTTParty.delete($url + "tasks/#{id}")
	task = JSON.parse(response.body)
	puts task
	if task.has_key?("alert") # only if the record not found
		puts task["alert"]
		delete
	else
		puts task["notice"]
	end
end

cont = 'y' # initialization
while cont == 'y' # condition
	puts "1. List \n2. Add \n3.Edit \n4.Show \n5.Delete"
	puts "Enter your option"
	option = gets.chomp
	case option
	when "1"
		index
	when "2"
		new_task
	when "3"
		edit
	when "4"
		show
	when "5"
		delete
	else 
		puts "Invalid option"																		
	end
	puts "Do you wish to continue (y/n)"
	cont = gets.chomp
end

puts "Program completed"

