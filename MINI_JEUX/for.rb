=begin
for value in 0..10
    puts value
end
=end

=begin

puts "donne moi un chiffre ou nombre"

count = gets.chomp.to_i

for i in (0..count)
    puts i
    if i == count
    puts "j'ai conmpté jusqu'à #{i}"
    end
end

=end


for i in 1..5
    next if i % 2 == 0
    puts i
    if i == 5
    puts "j'ai énuméré les nombres impairs de 1 à 5"
    end
end

