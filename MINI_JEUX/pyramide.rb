i=1
k=5
t=5

i.upto(k) do # 5 boucles de i à k donc de 1 à 5 qui englobe les deux bloucle print
  t.times do # 1ere boucle avec 5 espaces
    print ' ' 
  end

  (2 * i - 1).times do #1ere boucle avec 2 * 1 - 1 = 1 fois "*"
    print '*'
  end

  print "\n" #fin de la boucle avec retour à la ligne

  t -= 1 # on enlève (décrémente) 1 à t à chaque boucle donc on enlève un espace à chaque tour

  i += 1 # on rajoute (incrémente) 1 à i à chaque boucle donc on rajoute un "*" à chaque tour
end