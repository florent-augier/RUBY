def maskify(number)
   


    #cc = cc.each_char.map(&:to_s)
    num = number.to_s.length <= 4 ? number : number.to_s.slice(-4..-1) 
    "XXXX-XXXX-XXXX-#{num}"
    
end

print maskify('10105050576584')
print "\n"
print maskify('84757457')
print "\n"