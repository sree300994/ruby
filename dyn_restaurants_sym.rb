restaurants= {
    "adigas" => {
        "location" => "Jayanagar",
        "type" => "Quick Bite",
        "phone_number" => "N/A",
        "cuisines" => ["South India","Chinese"],
        "cost_for_two" => 150,
        "addresses" => "Jayanagar 4th Block",
        "highlights" => ["Breakfast","Veg"],
        "menu" => {
            "south_indian" => {
                "idly" => 26,
                "vada" => 24,
                "coffee" => 15,
                "masala_dosa" => 43
            }, "Chinese" => {
                "noodles" => 80,
                "soup" => 40
            }
        }
    }
}



# this method is used to sanitize the key incase there is spaces in the keys, it will make it underscore
require 'pry'
def key_sanitizer(key)
    # binding.pry
    key.split(" ").join("_").to_sym
    # binding.pry
end

def value_hash(data)
    details = {}
    data.each do |key,value|
       # binding.pry
        details[key_sanitizer(key)] = (value.is_a? Hash) ? value_hash(value) : value
        # binding.pry
    end
    return details
    # binding.pry
end

def convert_to_sym(data) 
    details = {}
    data.each do |key,value|
        details[key_sanitizer(key)] = (value.is_a? Hash) ? value_hash(value) : value
    end
    return details
end

puts convert_to_sym(restaurants)


