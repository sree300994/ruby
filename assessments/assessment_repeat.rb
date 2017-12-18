# require 'pry'
str = "hello"	
arr = str.split("")
result = arr.find { |alpha| arr.count(alpha) > 1 }

if (result.nil?)
	puts -1
else
	puts result
end






