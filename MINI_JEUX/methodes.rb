class Utilisateur
    attr_accessor :prenom, :nom, :nom_complet, :pays

    def nom_complet
        prenom + " " + nom
    end

    def habite_en(valeur)
        valeur == pays
    end
end

    bob = Utilisateur.new
    bob.prenom = "Bob"
    bob.nom = "Marley"
    bob.pays = "France"

    puts bob.nom_complet
    puts "Est-ce que Bob habite en France?"
    puts bob.habite_en("France")

    if bob.habite_en("Jamaïque")
        puts "Exactement Bob habite bien en Jamaïque"
    else 
        puts "Bob n'Habite pas en Jam mais en #{bob.pays}"
    end
