puts "entre un texte: "

text = gets.chomp

words = text.split(" ")

puts words

print words 
print "\n"

h = Hash.new(0) #on créer un hash et on l'initialise

words.each do |word| h[word] += 1 end # on créer un itération pour compter la réccurence des mots et le mettre sous forme de hash

puts "On a compté le nombre de réccurences pour chaque mot et mis les valeurs dans un hash, magique!"

puts h

frequencies_array = h.sort_by {|x,y| x } # on sort du hash chaque valeur-clé (obligatoire de piper par 2 variable x et y)

puts "Ci-dessous je fais apparaitre mes valeurs sous forme de tableau en les sortant du hash"

print frequencies_array 
print "\n"

# ci-dessus: en sortant les valeurs de mon hash et les mettant dans la variable "frequencies_array"
# frequencies_array devient automatiquement un array!!!

puts "La je vais affiché mes valeur sorti du tableau"

frequencies_array.each do |word, frequency| puts word + " : " + frequency.to_s end






