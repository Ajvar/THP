def ask_first_name
    return gets.chomp
end


def say_hello(first_name)
    puts "Hello #{first_name} !"
end

say_hello(ask_first_name)
