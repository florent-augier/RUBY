array = [15,468,78,44,64,12]

puts array.map(&:even?)

puts ""

puts array.map(&:odd?)

puts ""

puts array

puts ""

def odd(array) 
    
    array.map {|number| number % 2 != 0 ? number : nil}.reject(&:nil?)

end

def even(array)  

    array.map {|number| number % 2 == 0 ? number : nil}.reject(&:nil?)

end

def perform(array)

   even(array)
   odd(array)

end

perform(array)