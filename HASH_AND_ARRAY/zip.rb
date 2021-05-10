a = [1, 2, 3]
puts "mon premier tableau #{a}"
b = [4, 5, 6]
puts "mon deuxieme tableau #{b}"
c = [7, 8, 9]
puts "mon troisieme tableau #{c}"
d = [7, 8]
puts "mon quatrieme tableau #{d}"
puts "je vais associer mon quatrieme tableau aux 2 premiers et l'afficher en print"
print d.zip(a, b) # Si j'utilise la méthode print le résultats sera sous forme de tableau
puts ""
puts "Maintenant j'affiche en puts"
puts d.zip(a, b)
puts "Et voici le résultats avec le troisieme tableau combiné aux 2 premiers en print"
print c.zip(a,b)
puts ""
puts "ET maintenant en puts"
puts c.zip(a,b)


