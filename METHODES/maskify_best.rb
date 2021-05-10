def maskify (number)

    number = number.gsub(/.(?=....)/, '*') # Regex qui remplace tous les caractères sauf les 4 derniers (= nbr de point "." après le ?=)
end

print maskify('10105050576584')
print "\n"
print maskify('84757457')
print "\n"