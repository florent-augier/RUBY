def prime(n)
    puts "#{n} n'est pas un nombre entier" unless n.is_a? Integer # unless = sauf si
    is_prime = true
    for i in 2..n-1
      if n % i == 0
        is_prime = false
      end
    end
    if is_prime
      puts "#{n} est un nombre premier!"
    else
      puts "#{n} n'est pas un nombre premier."
    end
  end
  
  prime(1.5)
  prime(9)
  prime(11)
  prime(51)
  prime(97)