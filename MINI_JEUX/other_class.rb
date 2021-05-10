class Animal
    attr_reader :can_fly, :num_legs, :can_swim, :name

    def initialize(can_fly, num_legs, can_swim, name)
        puts "Un animal a été créé"
        @can_fly = can_fly
        @num_legs = num_legs
        @can_swim = can_swim
        @name = name
    end

end

class Snail < Animal
    def initialize
        super(false, 0, false, "Jojo")
    end
end

class Rabbit < Animal
    def initialize
        super(false, 4, false, "Roger")
    end

end

class Parrot < Animal
    def initialize
        super(true, 4, false, "André")
    end
end

class Seagull < Animal
    def initialize
        super(true, 2, true, "Yvette")
    end
end

mouette = Seagull.new
lapin = Rabbit.new
perroquet = Parrot.new
escargot = Snail.new


@animals = ObjectSpace.each_object(Animal)


@animals.each do |animal|
    
    puts "Je m'appelle #{animal.name} et je fais parti de la classe #{animal.class.name}"
    puts "Est-ce que je peux voler ? #{animal.can_fly}"
    puts "Est-ce que je peux nager ? #{animal.can_swim}" 

       
       
    puts "Combien a de pattes à un #{animal.class.name} ? #{animal.num_legs}"
    animal.num_legs
end
