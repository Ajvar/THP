class Player
    attr_accessor :name, :life_points

    def initialize(name_inpt)
        @name = name_inpt
        @life_points = 10
    end
    def show_state
        print("#{@name} a #{@life_points} points de vie")
    end
    def gets_damage(n)
        @life_points -= n
        puts("#{@name} a été tué !") if @life_points <= 0
    end
    def attack(player_name)
        puts("Le joueur #{@name} attaque le joueur #{player_name.name}")
        @damages = compute_damage()
        puts("il lui inflige #{@damages} points de dégat.")
        player_name.gets_damage(@damages)
    end
    private
    def compute_damage
        return rand(1..6)
    end
end

class HumanPlayer < Player
    attr_accessor :weapon_level
    def initialize(name_inpt)
        super(name_inpt)
        @life_points = 100
        @weapon_level = 1
    end
    def show_state
        super()
        puts(" et une arme de niveau #{weapon_level}")
    end
    def compute_damage
        return rand(1..6) * @weapon_level
    end
    def search_weapon
        @random = rand(1..6)
        puts("tu a trouvé une armé de niveau #{@random}")
        if @random > @weapon_level 
            puts("Elle est mieux que ton arme actuelle !")
            @weapon_level = @random
        else
            puts("Mince elle est moins forte que ton arme actuelle.")
        end
    end
    def search_health_pack
        @random = rand(1..6)
        puts ("Tu n'as rien trouvé") if @random == 1
        if @random >= 2 && @random <=5
            puts("Bravo tu a trouvé un pack de 50HP !")
            self.life_points += 50
        else
            puts("Bravo tu a trouvé un pack de 80 HP !")
            self.life_points += 80
        end
    end
end