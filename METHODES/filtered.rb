def filtered (string)

    r = /password\=([^\&]+)/
    string.gsub!(r) { |m| m.gsub!($1, "[FILTERED]") }

end

print filtered("salut ton password=saucisse")
print "\n"

print filtered("salut ton password=saucisse frite")
print "\n"