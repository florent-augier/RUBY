=begin
i = 20
loop do 
  i -= 1
  puts "#{i}"
  break if i <= 0
end

i = 20
loop do 
  i -= 1
  print "#{i}"
  break if i <= 0
end
=end


=begin
i = 20
loop do #la seule manière d'afficher de 20 à 0 avec uniquement des chiffres pairs! 
            # en respectant l'ordre de ces lignes
    puts i

    break if i <= 0 # ! à la place de cette ligne dans le code, si elle était avant le puts = arrêt à 2

    i -= 2

    next if i % 2 == 0

end

=end

i = 20
loop do

    i -= 2

    puts i

    break if i <= 0 # ! à la place de cette ligne dans le code, si elle était avant le puts = arrêt à 2

    next if i % 2 == 0
    
end