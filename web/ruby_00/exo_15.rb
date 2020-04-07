puts "En quelle année es-tu né.e ?"
print "> "
number = (gets.chomp).to_i
i = 0
while number < 2020
    puts "En #{number} tu avais #{i} ans."
    number += 1
    i += 1
end
puts "Cette année, tu as #{i} ans."
