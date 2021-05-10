def openOrSenior(data)
  #your code here
  
  result = [] # Initialise un array
  data.each {|ele| ele[0]>=55 && ele[1]>7 ? result.push("Senior") : result.push("Open")}
  result

  # Ci-dessus: data.each => dans tous les éléments du tableau (notamment les éléments sont des tableaux)    
  # Ensuite "el[0] >= 55" => on compare tous les premiers éléments de chaque tableau
  # Et on fait pareil avec les deuxièmes éléments de chaque tableau => "el[1] > 7"
  # Le "?" questionne le code juste avant => si ele[0] >= 55 && ele[1] > 7
  # Et renvoie un action si le code = true => le code qui est placé derrière
  # On push "Senior" dans le tableau result si le code est "true"
  # on push "Open" si le code est "false"
end

puts openOrSenior([[45, 12],[55,21],[19, -2],[104, 20]])

puts openOrSenior([[3, 12],[55,1],[91, -2],[54, 23]]) 