puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
i = 1
number = (gets.chomp).to_i
while number < 1 || number > 25
    puts "Erreur : merci de saisir un nombre entre 1 et 25"
    print "> "
    number = (gets.chomp).to_i
end
puts "Voici la pyramide :"
while i <= number
    (number - i).times do
        print " "
    end
    i.times do
        print "#"
    end
    i += 1
    puts
end
