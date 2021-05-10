def maskify(cc)
  # your beautiful code goes here
  cc.size <= 4 ? cc : "#" * (cc.length-4) + cc[-4..-1]
end

print maskify('10105050576584')
print "\n"
print maskify('84757457')
print "\n"