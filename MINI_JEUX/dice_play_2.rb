require 'pry'

class Game

    def initialize
        @player1 = Player.new
        @player2 = Player.new


        puts "Nous allons jouer à un jeu de dé"
        puts ""           
        puts "Pour le jeu il faut 2 joueurs"
        puts "Vous allez lancer le dé chacun votre tour"
        puts "Le joueur qui cumulera 20 points ou plus gagnera la partie"
        puts ""
        puts "Si le joueur 1 arrive le premier au score d'au moins 20 points, on attendra le tour du joueur 2 et définira qui a gagné selon le joueur qui totalisera le plus de points."
        puts "Bien sûr si le joueur 1 gagne et que le'écart de points avec le joueur 2 est d'au moins 7 points, la partie s'arrête."
        puts ""
        puts "On va commencer par le joueur 1"

        @player1.perform # Méthode pour demander les noms des joueurs

        puts "OK on a enfin un joueur, qui est le deuxième ?"

        @player2.perform

        puts "On a enfin 2 joueurs"
        puts ""
        puts "C'est parti pour un partie de dé #{@player1.name} et #{@player2.name}!"

    end

    def lets_play(player1, player2)

        ####### Les deux méthodes ci-dessous fonctionnent toutes les deux correctements! #######
        ####### Mettre en commentaires ou décommenter pour jouer sur les 2 méthodes ...  #######
        ##### Quand on sort de chacune des boucles on appelle la méthode "congratulations" #####

        ### La boucle while commence ci-dessus ###

        # while (!@player1.winner?(@count)) || (!@player2.winner?(@count))
        #     @player1.play
        #         if @player1.winner?(@count) && @player1.count > @player2.count
        #             puts "Normalement #{@player1.name} tu as gagné..."
        #             puts "Attendons voir combien va faire #{@player2.name}..."
        #         end
        #     @player2.play

        #     break if @player1.winner?(@count) || @player2.winner?(@count)
        # end

        # puts " On sort de la boucle 'while' !"
        # puts ""
        # puts ""
        # puts ""

        # congratulations

        ### La boucle while  et se termine ici ###

        ### La boucle loop do commence ici

        loop do
            @player1.play
                if @player1.winner?(@count) && @player2.count >= (@player1.count - 6)
                    puts "Normalement #{@player1.name} tu as gagné..."
                    puts "Attendons voir combien va faire #{@player2.name}..."
                else
                    break if @player1.winner?(@count) || @player2.winner?(@count) # On casse la boucle si 1 des 2 joueurs à un score égal ou supérieur à 20
                end
            @player2.play


           break if @player1.winner?(@count) || @player2.winner?(@count) # On casse la boucle si 1 des 2 joueurs à un score égal ou supérieur à 20
        end

        puts ""
        puts ""
        puts ""

        congratulations

        ### La boucle loop do se termine ici (inclus "congratulations") ###
    end

    # Méthode qui compare le cumul de point de chaque joueur
    def congratulations
        if  @player1.count > @player2.count 
            puts "T'es un monstre #{@player1.name}!!!"
            puts ""
            puts "Par contre #{@player2.name}, t'es une saucisse!"
        else
            puts "T'es un monstre #{@player2.name}!!!"
            puts ""
            puts "Par contre #{@player1.name}, t'es une saucisse!"
        end
    end
end

class Player < Game
    attr_accessor :name, :player1, :player2, :age, :dice, :count, :id

    def initialize
        @count = 0
    end

    def ask_first_name
        loop do 
            puts "Quel est ton prénom? (Entre au moins deux lettres)"
            @name = gets.chomp
            break if string?(@name)
        end
    end

    def ask_age
        loop do
            puts "Quel age as-tu? Entre un nombre entier"
            @age = gets.chomp
            break if number?(@age)
        end

    end

    def string?(obj)
        obj = obj.to_s unless obj.is_a? String
        /[a-zA-Z]{2}/.match obj
    end

    def number?(obj)
        obj = obj.to_s unless obj.is_a? String
        /\A[+]?\d+?\z/.match obj
      end

    def welcome
        puts "Bonjour #{@name}!"
        puts ""
        # puts "Tu as #{@age} ans." # => Décommenter uniquement si ask_age dans la méthode perform est décommentée.
    end

    def perform
        ask_first_name
        # ask_age
        welcome
    end

    def play
        throw_dice
        calcul_total(@dice)
    end

    def throw_dice
        puts "Appuie sur la touche entrée pour lancer le dé #{@name}"
        gets.chomp
        @dice = rand(1..6)
    end

    def calcul_total(num)
        puts "Tu as fais #{@dice}!"
        @count += @dice 
        puts "Tu cumule au total #{@count} points!"
        puts ""
    end

    def winner?(count)
        @count >= 20
    end

end

game = Game.new

game.lets_play(@player1, @player2)