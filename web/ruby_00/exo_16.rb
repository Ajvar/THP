puts "En quelle année es-tu né.e ?"
print "> "
number = (gets.chomp).to_i
i = 0
while 2020 - number > 1
    puts "Il y a #{2020 - number} ans, tu avais #{i} ans."
    number += 1
    i += 1
end
puts "Il y a 1 an, tu avais #{i} ans."
number += 1
i += 1
puts "Cette année, tu as #{i} ans."
