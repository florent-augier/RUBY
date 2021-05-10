books = Hash.new

books = {:authors => "James", :title => "Truc"}

puts "est_ce que books a au moins une valeur de clé? #{books.has_value?("James")}"
puts "est_ce que books a une clé 'name' #{books.has_key?(:name)}"

puts "les clés de books sont #{books.keys}"
puts "la deuxième clé est #{books.keys[1]}"

puts "combien y a t-il de clé dans books? #{books.keys.count}"
puts "combien y a t-il de valeur dans books? #{books.values.count}"

puts "quelle est la clé de la valeur 'Truc'? #{books.key("Truc")}"
puts "quelle est la valeur de la clé ':title'? #{books[:title]}"