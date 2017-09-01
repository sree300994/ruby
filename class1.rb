class Student
	# first_name, last_name, age, gender, course
	# sets up the reader methods
	# attr_reader :first_name, :last_name, :age, :gender, :course
	# sets up the writer methods
	# attr_writer :first_name, :last_name, :age, :gender, :course,

	#this creates both readers and the writers
	attr_accessor :first_name, :last_name, :age, :gender, :course

end

s1 = Student.new
puts s1

s1.first_name = "Sreekanth"
puts s1.first_name

s1.last_name = "Kurakula"
puts s1.last_name

s1.age = "22"
puts s1.age

s1.gender = "male"
puts s1.gender

s1.course = ["WD", "JS", "React"]
puts s1.course


