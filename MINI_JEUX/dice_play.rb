def game 
    puts "Bonjour, tu vas jouer à un jeu"
    puts "On va lancer un dé et obtenir un résultat."
    puts "Si tu fais 5 ou 6 on tu vas monter d'un étage"
    puts "Si tu fais 1 tu descendras d'un étage"
    puts "si tu fais 2, 3 ou 4 tu ne bouges pas!"
    puts ""
    puts "Le but du jeu est d'atteindre la 10eme marche"

    stage = 1
    show_state(stage)
    count = 0

  while(!is_over?(stage)) do
    puts "tape 'entrée' pour jouer"
    gets.chomp
    stage += analyze_dice(dice_throw)
    show_state(stage)
    count += 1
    show_how_many(count)
  end

  puts "===Tu as gagné!==="

end


def dice_throw
    return rand(1..6)
end



def analyze_dice(dice)
  if dice >= 5
    puts "Tu as fais #{dice}"
    puts "Tu monte d'un étage"
    return 1
  elsif dice == 1
    puts "Tu as fais #{dice}"
    puts "Tu descends d'un étage"
    return -1
  else
    puts "Tu as fais #{dice}"
    puts "Tu reste où tu es!"
    return 0
  end
end

def show_state(stage)
    puts "Tu es sur la marche n° #{stage}"
end

def show_how_many(count)
    puts "Tu as fais #{count} lancé(s)"
end 

def is_over?(stage)
    if stage >= 10
        puts "Fin de partie! Tu as atteint la 10eme marche."
        return true
    else
        return false
    end
end



puts game


