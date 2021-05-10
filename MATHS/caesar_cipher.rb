# frozen_string_literal: true

def caesar_cipher(string, number)
  if string.class != String
    "entrez un phrase s'il vous plaît"


  else
    array = string.split('')
    array.map! { |x| x.ord.between?(65, 90) || x.ord.between?(97, 122) ? (x.ord + number).chr : x }
    array.map! { |x| x.ord > 122 || x == x.upcase && x.ord > 90 ? (x.ord - 26).chr : x }
    array.join('')
  end
end

puts caesar_cipher('ca va', 2) # décale de deux lettre dans le sens normal de l'alphabet
puts caesar_cipher('Salut', 7) #  décale de sept lettre  dans le sens normal de l'alphabet
puts caesar_cipher('Blanc manger coco', 23)
puts caesar_cipher('Je m\'appelle Florent', 18) 


