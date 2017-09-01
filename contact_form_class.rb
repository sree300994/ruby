require 'pry'
class ContactForm
	# attributes / properties
	attr_accessor :name, :email_id, :subject, :phone, :message
    # methods / behaviours
    def details
    	"Name : #{name} \nMobile : #{phone} \nEmail : #{email_id} \nSubject : #{subject} \nMessage : #{message}"
    end
end

contact_forms = []

s1 = ContactForm.new
s1.name = "Sreekanth"
s1.email_id = "sk300994@gmail.com"
s1.subject = "Enquiry about the course"
s1.phone = "9440034465"
s1.message = "I want to learn the course to obtain the knowledge"
contact_forms.push(s1)

# puts "New Contact Form submission from #{s1.name}"
# puts s1.details

s2 = ContactForm.new
s2.name = "Mahesh"
s2.email_id = "maheshbablu@gmail.com"
s2.subject = "Enquiry about course"
s2.phone = "8125427745"
s2.message = "I wish to join the course"
contact_forms.push(s2)

# puts "New Contact Form submission from #{s2.name}"
# puts s2.details

# binding.pry
contact_forms.each do |contact_form|
	# binding.pry
	puts contact_form.name + " " + contact_form.subject
end

contact_forms.each do |contact_form|
	puts contact_form.details
end





