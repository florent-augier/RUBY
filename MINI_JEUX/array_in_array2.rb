s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]



s.each do |x|
    x[0,1].each do |y|
        puts y
    end
end

s.each do |x|
    x[1,1].each do |z|
        puts z
    end
end
