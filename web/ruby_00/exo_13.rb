puts "En quelle année es-tu né.e ?"
print "> "
number = (gets.chomp).to_i
while number < 2020
    print "#{number}, "
    number += 1
end
print "#{number}."
