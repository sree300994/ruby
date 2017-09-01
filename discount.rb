# setting default value to the argument
def calc_total(total,loyalty_points=5,discount=10)
	return total - (total * discount / 100)
end

puts calc_total(100)
puts calc_total(1000,100,25)
puts calc_total(1000,100,30)


def cal_total_hash(detials)
	# details.has_key?(:loyalty_points) ? details[:loyalty_points] : 5
	total = detials[:total]
	loyalty_points=detials[:loyalty_points].nil? ? 5 : detials[:loyalty_points]
	discount = detials[:discount].nil? ? 10 : detials[:discount]
	return total - (total * discount / 100)
end

# we are passing a hash as an argument to the method
puts cal_total_hash({:total => 100})
puts cal_total_hash({:total => 1000, :discount => 20})
puts cal_total_hash({:total => 1000, :loyalty_points => 10, :discount => 20})

