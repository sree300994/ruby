mobiles_hash = {
	#key => value
	:teja => "9676711341",
	:rahul => "9591625269"
}

puts mobiles_hash[:teja]

mobiles_hash.each do |key,value|
	puts "#{key.class} #{key} #{value}"
end