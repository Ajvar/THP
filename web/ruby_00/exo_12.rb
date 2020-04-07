puts "Donne-moi un nombre :"
print "> "
number = (gets.chomp).to_i
i = 0
while i < number
    print "#{i}, "
    i += 1
end
print "#{i}."
