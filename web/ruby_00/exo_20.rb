puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
number = (gets.chomp).to_i + 1
while number < 2 || number > 26
    puts "Erreur : merci de saisir un nombre entre 1 et 25"
    print "> "
    number = (gets.chomp).to_i + 1
end
puts "Voici la pyramide :"
number.times do |i|
    i.times do
        print "#"
    end
    if i > 0
       puts
    end
end
