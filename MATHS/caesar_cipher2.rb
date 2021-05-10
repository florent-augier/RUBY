string = "ola les gens"

puts string

ascii = string.chars.map(&:ord)

puts "Voici la chaine de caractères convertie en tableau de décimaux ASCII: "
print ascii 
puts "\n"

shifted = ascii.map {|c| c + 8 } # Méthode pour décaler les caractères selon la grille ascii => c + 8

puts "Et maintenant on a décalé tous les décimaux (position + 8) selon la grille ASCII: "
print shifted
puts "\n"


ascii_to_string = shifted.map { |x| x.chr }.join

puts "Puis on converti le tableau de décimaux en chaine de caractères: "

puts ascii_to_string