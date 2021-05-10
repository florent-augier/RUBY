a = "HELLO"

b = "cacao"

c = "$111.00"


case a
when /\A[a-z]*\z/; print "Lower case\n"
when /\A[A-Z]*\z/; print "Upper case\n"
else;              print "Mixed case\n"
end

case b
    when /[a-z]/; print "Lower case\n"
    end

case c 
when /\$/; print "il y a un caractere special\n"
end


