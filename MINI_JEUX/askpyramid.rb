print "Combien d'étages veux-tu dans ta pyramide? (entre 1 et 25) "

def full_pyramid
    etages = gets.to_i
#Boucle pour s'assurer que l'utilisateur rentre un nombre d'étages entre 1 et 25

    while etages < 1 || etages > 25 do
        print "Tu sais pas lire !? Entre 1 et 25 j'ai dit!"
        print " => "
        etages = gets.to_i
    end

#Méthode avec .times

    etages.times do |i|
        puts " "*(etages-1-i) + "#"*(i+1)
    end
end

puts full_pyramid
