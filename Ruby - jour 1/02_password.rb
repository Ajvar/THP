def signup
    puts("Nouveau mot de passe:")
    password = gets.chomp
    return password
end

def login(password)
    while true
        puts("Mot de passe:")
        if password == gets.chomp
            welcome_screen
            return
        end
            print("\nMauvais mot de passe.\n\n")
    end
end

def welcome_screen
    puts("----------- BIENVENUE DANS LA ZONE SCRETE ----------- \n la terre est plate mais ne le répètes pas.")
end

def perform
    password = signup
    login(password)
end

perform