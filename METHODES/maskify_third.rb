def maskify(cc)
  cc.gsub(/.(?=.{4})/, "#")
end


print maskify('10105050576584')
print "\n"
print maskify('84757457')
print "\n"