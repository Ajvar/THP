class Game
    attr_accessor :human_player, :enemies
    def initialize(name_in)
        @human_player = HumanPlayer.new(name_in)
        @enemies = Array.new
        4.times do |n|
            @enemies[n] = Player.new("Player#{n}")
        end
    end
    def kill_player(player)
        @enemies.delete(player)
    end
    def is_still_ongoind?
        return true if @human_player.life_points > 0 && enemies.length > 0
        return false
    end
    def show_players
        @human_player.show_state
        puts(enemies.length)
    end
end