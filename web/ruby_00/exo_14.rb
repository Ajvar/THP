puts "Donne-moi un nombre :"
print "> "
number = (gets.chomp).to_i
while number > 0
    print "#{number}, "
    number -= 1
end
print "0."
