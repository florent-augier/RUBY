puts "Et salut toi!"
puts "C'est quoi ton petit nom? "


@name = gets.chomp


puts "Ravis de faire ta connaissance #{@name}!"

# je vais ranger ma variable age et vais la faire fonctionner avec une méthode pour calculer l'année de naissance


puts "Maintenant on va voir ton age"
puts "donne moi ton année de naissance"
year = gets.chomp
puts "Ensuite donne moi ton mois de naissance (en chiffre! ex: 07 ou 12)"
month = gets.chomp
puts "et pour finir le jour de naissance"
day = gets.chomp

@birthday = Hash.new
@birthday[:year] = year.to_i
@birthday[:month] = month.to_i
@birthday[:day] = day.to_i



def age(dob)
    now = Time.now.utc
    now.year - dob[:year] - ((now.month > dob[:month] || (now.month == dob[:month] && now.day >= dob[:day])) ? 0 : 1)
end

puts "#{@name} tu as #{age(@birthday)} ans"

