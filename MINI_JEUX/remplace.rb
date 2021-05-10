puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
private_word = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != private_word
    print word + " "
  else
    print "PRIVATE "
  end
end