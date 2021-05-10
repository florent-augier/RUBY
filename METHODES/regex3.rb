#!/usr/bin/ruby

phone = "2004-959-559 #This is Phone Number"

# Delete Ruby-style comments
phone = phone.sub!(/#.*$/, "")   
puts "Phone Num : #{phone}"

# Remove anything other than digits
phone = phone.gsub!(/\D/, "")    
puts "Phone Num : #{phone}"


# supprime tout ce qu'il y a partir du 9 jusqu'à la fin et met des # à la fin
phone = phone.sub!(/9.*$/, "###")   
puts "Phone Num : #{phone}"

# supprime tout ce qu'il y a après le 0
phone = phone.sub!(/0.*$/, "")   
puts "Phone Num : #{phone}"

numeros = "054897/99784/494"


