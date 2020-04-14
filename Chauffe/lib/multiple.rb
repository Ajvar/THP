def sum_of_multiples(number)
    return "Integer only" if  ! number.is_a? Integer
    return 0 if number <= 5
    ret = 0
    for i in 1..number do
       ret += i if i % 3 == 0 || i % 5 == 0 
    end
    return ret
end
