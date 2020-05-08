require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new("Donald")
puts("Le combat commence")
player1.show_state
player2.show_state
while player1.life_points > 0 && player2.life_points > 0
    player1.attack(player2)
    break if player2.life_points <= 0
    player2.attack(player1)
end