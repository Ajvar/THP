def full_pyramid
    puts("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?")
    size = gets.chomp
    cubes = 1
    size = size.to_i
    while size > 0
        spaces = size - 1
        spaces.times do
            print(" ")
        end
        cubes.times do
            print("#")
        end
        puts("")
        size = size - 1
        cubes = cubes + 2
    end
end

def wtf_pyramid
    puts("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (nombre impair)")
    size = gets.chomp
    size = size.to_i
    if size.even?
        puts("Entres un nombre impair !")
        return
    end
    cubes = 1
    half = size / 2
    while size > half
        spaces = size - half -1
        spaces.times do
            print(" ")
        end
        cubes.times do
            print("#")
        end
        puts("")
        size = size - 1
        cubes = cubes + 2
    end
    size = size *2
    cubes = cubes - 2
    while size > half
        cubes = cubes - 2
        spaces = spaces + 1
        spaces.times do
            print(" ")
        end
        cubes.times do
            print("#")
        end
        puts("")
        size = size - 1
    end
end