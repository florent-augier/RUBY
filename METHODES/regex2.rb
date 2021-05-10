puts /gens/ !~ "salut les gens" # Regex pour verifier si un "gens"  n'est pas dans le string "salut les gens" (objet#match) => retourne false


puts "salut les gens" !~ /gens/ # Meme chose qu'au dessus (ne contient pas) => retourne false

puts "hey ca va" =~ /hey/ # Donne l'index du premier caractere dont l'expression correspond avec le string

puts /hey/ =~ "hey ca va" # Meme chose qu'au dessus

string = "ohe les gars ca va"

string_match = /ca/.match(string) # ma varialble devient une instance de classe MatchData

puts string_match

puts "ola les gars #{string_match} va"
