puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 } # méthode pour compter chaque fois qu'un mot apparait
frequencies = frequencies.sort_by {|a, b| a } 
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

