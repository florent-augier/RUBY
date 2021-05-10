text = "salut"
text.split(" ")
hash = {}
text.scan(/[aeiou]/){|m| hash[$~.begin(0)] = m }
puts hash

text2 = "salut"
text2.split(" ")
array = []
text2.scan(/[aeiou]/){|n| array[$~.begin(0)] = n }

