def maskify (number) # méthode pour n'afficher que les 4 derniers chiffres 
    
    number = '*' * (number.size - 4) + number[-4, 4] # on print * fois toute la taille de la string - 4 
                                                     # puis on print à partir des 4 derniers chiffre, 4 chiffres

end

def maskify2 (number)

    number = '*' * (number.size - 4) + number[-2, 1] # Comme la 1ere méthode sauf que j'affiche uniquement à partir de l'avant-dernier index
                                                     # Et je choisi d'en afficher qu'un seul des deux derniers donc l'avant-dernier

end

print maskify('10105050576584')
print "\n"
print maskify('84757457')
print "\n"
puts ""
print maskify2('10105050576584')
print "\n"
print maskify2('84757457')
print "\n"