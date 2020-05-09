require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'

gamez = Game.new("Gontran")
print("-------------------------------------------------
    |Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
    |Le but du jeu est d'être le dernier survivant !|
    -------------------------------------------------\n")
while (gamez.still_ongoing?)
    gamez.new_player_in_sight
    gamez.menu
    gamez.menu_choice(gets.chomp())
end
gamez.end