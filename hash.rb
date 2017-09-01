mobiles = ["9676711341","9591625269","9440034465","7353615707","7899193782"]

mobiles_hash = {
	#key => value
	"teja" => "9676711341",
	"rahul" => "9591625269",
	"sreekanth" => "9440034465",
	"sharath" => "7353615707",
	"harish" => "7899193782"
}

puts mobiles_hash["mahesh"] = "8125427745" # this method is used to add additional key to the present hash

puts mobiles_hash.keys # which gives the entire keys present in the hash

puts mobiles_hash.values # which gives the entire values present in the hash

puts mobiles_hash.has_key?("ani") # this method is used to check whether the asked key is present in the hash or not
puts mobiles_hash.has_value?("451") # this method is used to check whether the asked value is present in the hash or not

mobiles_hash.each do |a,mobile|

	puts "#{a} - #{mobile}"

end
puts mobiles_hash.key("9440034465")

puts mobiles_hash.to_a