class Pyramid # début de la classe Pyramid
    def print_star # début de la méthode print_star
      space = 10 # on donne un valeur à "space" qui vaut 10 donc un integer (caractère numérique)
      (0...5).each do |i| # on créer une boucle de 0 à 5 et à chaque tour on lui fait exécuter un code
        (0..space).each do # on créer une boucle (fille) dans la boucle mère, de 0 à 10 on exécute le code ci-dessous
          printf " " # sur la même ligne l'espace " " est exécuté 10 fois
        end # fermeture de la boucle fille

        (0...2*i+1).each do # on créer une deuxième boucle fille (fille2) de 0 à 2*i où i est le numéro de la boucle
         printf "*" # sur la même ligne que la première boucle fille (fille) le "*" est exécuté 1 fois (0*2+1=1) puis 2 fois (1*2+1=3)....
        end # fin de la boucle fille2
        
        puts "\n" # après ces deux boucles filles qui sont exécutées sur la même ligne, le \n renvoie à la ligne
       
        space -=1 # on décrémente (chaque tour on enlève) un espace
      
      end # fin de la boucle mère
    end # fin de la méthode de classe
  end # fin de la classe
  
  p = Pyramid.new # on nomme "p" la classe Pyramid qu'on initialise avec .new
  p.print_star # pour finir on exécute la méthode de classe print_star