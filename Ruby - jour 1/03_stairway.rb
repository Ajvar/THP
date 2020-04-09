def marche(marche)
    puts("Vous êtes sur la marche numéro #{marche}")
end



def jeu
    count = 0
    while count < 10
=begin loop do
        puts("Appuyez sur Entrée pour lancer le dé")
        lancer = gets.chomp
        if lancer == ""
            break
        end
    end
=end
        lancer = rand(1..6)
        puts("Vous avez fait #{lancer}")
        if lancer == 5 || lancer == 6
            count = count + 1
            puts("Vous avancez d'une marche.")
            marche(count)
            next
        end
        if lancer == 1
            if count > 0
                count = count - 1
            end
            puts("Vous reculez d'une case")
            marche(count)
            next
        end
        puts("rien ne se passe")
        marche(count)
    end
    puts("Bravo vous avez atteint la dixième marche !")
end

def average_finish_time
    moyenne = 0
    i = 0
    while i < 100
        start = Time.now
        jeu
        moyenne = (moyenne + (Time.now - start))/2
        i = i + 1
    end
    print(" #{moyenne} secondes en moyenne.")
end
