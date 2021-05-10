class Pyramid
    def print_space
        count = 0

        while count < 15    
            puts " "* (count +1)
            count += 1
        end    
    end

    def print_hash
        count = 1

        while count < 15 
            puts "#" *count
            count += 1
        end
    end
end

building = Pyramid.new
puts building.print_space, building.print_hash

