class Game
    attr_accessor :human_player, :enemies
    def initialize(name_in)
        @human_player = HumanPlayer.new(name_in)
        @players_left = 10;
        @enemies_in_sight = Array.new
    end
    def kill_player(player)
        @enemies_in_sight.delete(player)
    end
    def still_ongoing?
        return true if @human_player.life_points > 0 && @players_left > 0
        return false
    end
    def show_players
        @human_player.show_state
        puts("Il reste #{@players_left} ennemies.")
    end
    def menu
        puts("Quelle action veux-tu effectuer ?

            a - chercher une meilleure arme
            s - chercher à se soigner 
            
            attaquer un joueur en vue :\n\n")
       @enemies_in_sight.each_with_index do |n, i|
            puts("            #{i} - Attaquer #{n.name}") if n.life_points > 0
        end 
    end
    def menu_choice(s)
        @human_player.search_weapon if s == 'a'
        @human_player.search_health_pack if s == 's'
        @human_player.attack(@enemies_in_sight[s.to_i]) if @enemies_in_sight[s.to_i] != nil
        if s =~ /[[:digit:]]/ && @enemies_in_sight[s.to_i].life_points < 1
            self.kill_player(@enemies_in_sight[s.to_i])
            @players_left -= 1
        end
    end
    def enemies_attack
        enemies_in_sight.each do |n|
            n.attack(@human_player)
        end
    end
    def end 
        puts("Bravo tu a gagné !") if @human_player.life_points > 0
        puts("LOOSER !") if @human_player.life_points < 1
    end
    def new_player_in_sight
        if @players_left > @enemies_in_sight.length
            @random = rand(1..6)
            puts("Rien ne se passe") if @random == 1
            if @random >= 2 && @random <= 4
                @enemies_in_sight << Player.new("Player#{rand(1..100)}")
                puts("Un nouvel ennemi apparait")
            end
            if @random == 2 || @random == 6
                2.times {@enemies_in_sight << Player.new("Player#{rand(1..100)}")}
                puts("Deux ennemis apparaissent")
        end
        else
            puts("Tous les joueurs sont déjà en vue.")
        end
    end
end