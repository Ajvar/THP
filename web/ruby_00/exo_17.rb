puts "En quelle année es-tu né.e ?"
print "> "
number = 2020 - (gets.chomp).to_i
i = 0
while number > 1
    if number == i
        puts "Il y a #{number} ans, tu avais la moitié de l'âge que tu as aujourd'hui."
    else
        puts "Il y a #{number} ans, tu avais #{i} ans."
    end
    number -= 1
    i += 1
end
puts "Il y a 1 an, tu avais #{i} ans."
number += 1
i += 1
puts "Cette année, tu as #{i} ans."
